{.compile:"spirv_cross.cpp".}
{.compile:"spirv_cfg.cpp".}
{.compile:"spirv_glsl.cpp".}
{.compile:"spirv_hlsl.cpp".}
{.compile:"spirv_cpp.cpp".}

import cpp_utilities, gen_spirvcross, math, cccobject, macros

{.emit:"using namespace std;".}

type spirv {.header:"vector", importcpp:"std::vector<unsigned int>".} = object
proc isCCCConcept*(T: typedesc[spirv]): bool = true
type unordered_set_uint {.header:"unordered_set", importcpp:"std::unordered_set<unsigned int>".} = object
proc isCCCConcept*(T: typedesc[unordered_set_uint]): bool = true
type resource_vector {.header:"vector", importcpp:"std::vector<spirv_cross::Resource>".} = object
proc isCCCConcept*(T: typedesc[resource_vector]): bool = true
# proc `[]`(res: var resource_vector, index: cint): Resource {.importcpp:"#[#]".}

type astring {.header:"string", importcpp:"std::string".} = object
proc isCCCConcept*(T: typedesc[astring]): bool = true

# proc pushback(vec: spirv, v: uint32) {.importcpp:"#.push_back(#)".}
# proc cstr(str: astring): cstring {.importcpp:"#.c_str()".}
# proc cstr(str: constType[astring]): cstring {.importcpp:"#.c_str()".}
# proc size(res: stdvector_Resource | vector000 | stdunorderedset_uint32t): csize {.importcpp:"#.size()".} 

import moustachu
let shaderJsTemplate = """
/*jshint esversion: 6 */

var {{ShaderName}} = pc.createScript('{{ShaderName}}');

{{#FloatAttrib}}
{{ShaderName}}.attributes.add('{{AttribName}}', { type: 'number', default: {{DefaultValue}} });

{{/FloatAttrib}}
{{#TextureAttrib}}
{{ShaderName}}.attributes.add('{{TextureName}}', {
  type: 'asset',
  assetType: 'texture',
  title: '{{TextureName}}'
});

{{/TextureAttrib}}
{{ShaderName}}.prototype.reloadShader = function() {
  var app = this.app;
  var model = this.entity.model.model;
  var gd = app.graphicsDevice;

  var vertexShader = `
{{VertexShaderBody}}`;

  var pixelShader = `
{{PixelShaderBody}}`;

  var shaderDefinition = {
    attributes: {
      aPosition: pc.SEMANTIC_POSITION,
      aUv0: pc.SEMANTIC_TEXCOORD0
    },
    vshader: vertexShader,
    fshader: pixelShader
  };

  // Create the shader from the definition
  this.shader = new pc.Shader(gd, shaderDefinition);

  // Create a new material and set the shader
  this.material = new pc.Material();
  this.material.setShader(this.shader);

  {{#SetFloats}}
  this.material.setParameter('{{AttribName}}', this.{{AttribName}});
  this.on('attr:{{AttribName}}', function (value, prev) {
    this.reloadShader();
  });

  {{/SetFloats}}
  {{#SetTextures}}
  this.material.setParameter('{{TextureName}}', this.{{TextureName}}.resource);
  this.on('attr:{{TextureName}}', function (value, prev) {
    this.reloadShader();
  });

  {{/SetTextures}}

  // Replace the material on the model with our new material
  model.meshInstances[0].material = this.material;
};

// initialize code called once per entity
{{ShaderName}}.prototype.initialize = function() {    
  this.reloadShader();
};

{{ShaderName}}.prototype.swap = function(old) {
  this.reloadShader();
};
"""

proc openSpirv(spvFile: string): ptr spirv =
  cppnewptr(result)

  var spirvFile = open(spvFile)
  var spirvFileSize32 = int ceil int(spirvFile.getFileSize) / 4
  var buffer = newSeq[uint8](spirvFile.getFileSize)
  assert(spirvFile.readBytes(buffer, 0, spirvFile.getFileSize) == spirvFile.getFileSize)
  for i in 0..<spirvFileSize32:
    var index = i * 4
    var val = cast[ptr uint32](addr(buffer[index]))
    result[].push_back(val[]).to(void)

proc close(spv: ptr spirv) =
  spv.cppdelptr

# template printInfo(glsl: typed): untyped =
#   var decorationSet = glsl.AsCompiler()[].getdecoration(resource.id, spvDecoration.DecorationDescriptorSet)
#   var decorationBinding = glsl.AsCompiler()[].getdecoration(resource.id, spvDecoration.DecorationBinding)
#   var decorationLocation = glsl.AsCompiler()[].getdecoration(resource.id, spvDecoration.DecorationLocation)
#   echo resource.name.cstr, " ", $decorationSet, " ", $decorationBinding, " ", $decorationLocation

proc compileToWebGL1(vertSpv, fragSpv: ptr spirv): string =
  var finalCode = newContext()
  finalCode["ShaderName"] = "MyShader"

  var glslOptions: Options
  glslOptions.es = true
  glslOptions.version = 100

  var vertGlsl: ref CompilerGLSL
  cppnewref(vertGlsl, vertSpv[])

  vertGlsl[].set_options(glslOptions).to(void)
  var vertCompiled = vertGlsl[].compile().to(astring)
  finalCode["VertexShaderBody"] = $vertCompiled.c_str().to(cstring)

  var fragGlsl: ref CompilerGLSL
  cppnewref(fragGlsl, fragSpv[])
  
  # find floats and textures
  var fragResources = fragGlsl[].get_shader_resources().to(ShaderResources)

  var textureSlots = newSeq[Context]()
  var fragSampledImages = fragResources.sampled_images.to(resource_vector)
  for i in 0..<fragSampledImages.size().to(cint):
    var resource = fragSampledImages[i].to(Resource)
    # printInfo fragGlsl
    var textureAttrib = newContext()
    var resourceName = resource.name.to(astring)
    textureAttrib["TextureName"] = $resourceName.c_str().to(cstring)
    textureSlots.add(textureAttrib)

  finalCode["TextureAttrib"] = textureSlots
  finalCode["SetTextures"] = textureSlots

  var floatSlots = newSeq[Context]()
  var variables = fragGlsl[].get_active_interface_variables().to(unordered_set_uint)
  for vid in cppItems[unordered_set_uint, uint32](variables):
    var itemType = fragGlsl[].get_type_from_variable(vid).to(SPIRType)
    var baseType = itemType.basetype.to(SPIRTypeBaseType)
    if fragGlsl[].get_storage_class(vid).to(spvStorageClass) == spvStorageClass.StorageClassUniformConstant and baseType == SPIRTypeBaseType.Float:
      var floatAttrib = newContext()
      var attribStr = fragGlsl[].get_name(vid).to(astring)
      floatAttrib["AttribName"] = $attribStr.c_str().to(cstring)
      floatAttrib["DefaultValue"] = "0.0"
      floatSlots.add(floatAttrib)

  finalCode["FloatAttrib"] = floatSlots
  finalCode["SetFloats"] = floatSlots

  # finally compile
  fragGlsl[].set_options(glslOptions).to(void)
  var fragCompiled = fragGlsl[].compile().to(astring)
  finalCode["PixelShaderBody"] = $fragCompiled.c_str().to(cstring)

  return shaderJsTemplate.render finalCode

var vert = openSpirv("vert.spv")
var frag = openSpirv("frag.spv")
echo compileToWebGL1(vert, frag)
vert.close()
frag.close()