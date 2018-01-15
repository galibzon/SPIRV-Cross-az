{.compile:"spirv_cross.cpp".}
{.compile:"spirv_cfg.cpp".}
{.compile:"spirv_glsl.cpp".}
{.compile:"spirv_hlsl.cpp".}
{.compile:"spirv_cpp.cpp".}
import cpp_utilities, gen_spirvcross, math
proc pushback(vec: spirv, v: uint32) {.importcpp:"#.push_back(#)".}
proc cstr(str: astring): cstring {.importcpp:"#.c_str()".}
proc cstr(str: constType[astring]): cstring {.importcpp:"#.c_str()".}
proc size(res: stdvector_Resource | vector000 | stdunorderedset_uint32t): csize {.importcpp:"#.size()".} 
proc `[]`(res: var stdvector_Resource | var vector000, index: cint): Resource {.importcpp:"#[#]".}

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
  var spirvFile = open(spvFile)
  var spirvFileSize32 = int ceil int(spirvFile.getFileSize) / 4
  var buffer = newSeq[uint8](spirvFile.getFileSize)
  result = cppnew initspirv()
  assert(spirvFile.readBytes(buffer, 0, spirvFile.getFileSize) == spirvFile.getFileSize)
  for i in 0..<spirvFileSize32:
    var index = i * 4
    var val = cast[ptr uint32](addr(buffer[index]))
    result[].pushback(val[])

proc close(spv: ptr spirv) =
  deletespirv spv

# template printInfo(glsl: typed): untyped =
#   var decorationSet = glsl.AsCompiler()[].getdecoration(resource.id, spvDecoration.DecorationDescriptorSet)
#   var decorationBinding = glsl.AsCompiler()[].getdecoration(resource.id, spvDecoration.DecorationBinding)
#   var decorationLocation = glsl.AsCompiler()[].getdecoration(resource.id, spvDecoration.DecorationLocation)
#   echo resource.name.cstr, " ", $decorationSet, " ", $decorationBinding, " ", $decorationLocation

proc compileToWebGL1(vertSpv, fragSpv: ptr spirv): string =
  var vert = openSpirv("vert.spv")
  var frag = openSpirv("frag.spv")

  var finalCode = newContext()
  finalCode["ShaderName"] = "MyShader"

  var glslOptions = initOptions()
  glslOptions.es = true
  glslOptions.version = 100

  var vertGlsl = cppnew initCompilerGLSL(vert[])
  vertGlsl[].setoptions(glslOptions)
  var vertCompiled = vertGlsl.AsCompiler()[].compile()
  finalCode["VertexShaderBody"] = $vertCompiled.cstr
  deleteCompilerGLSL vertGlsl

  var fragGlsl = cppnew initCompilerGLSL(frag[])
  
  # find floats and textures
  var fragResources = fragGlsl.AsCompiler()[].getshaderresources()

  var textureSlots = newSeq[Context]()
  var fragSampledImages = fragResources.sampledimages
  for i in 0..<fragSampledImages.size:
    var resource = fragSampledImages[cint i]
    # printInfo fragGlsl
    var textureAttrib = newContext()
    textureAttrib["TextureName"] = $resource.name.cstr
    textureSlots.add(textureAttrib)

  finalCode["TextureAttrib"] = textureSlots
  finalCode["SetTextures"] = textureSlots

  var floatSlots = newSeq[Context]()
  var variables = fragGlsl.AsCompiler()[].getactiveinterfacecvariables()
  for vid in cppItems[stdunorderedset_uint32t, uint32](variables):
    var baseType = @(fragGlsl.AsCompiler()[].gettypecfromcvariable(vid)).basetype
    if fragGlsl.AsCompiler()[].getstorageclass(vid) == spvStorageClass.StorageClassUniformConstant and baseType == SPIRTypeBaseType.Float:
      var floatAttrib = newContext()
      floatAttrib["AttribName"] = $fragGlsl.AsCompiler()[].getname(vid).cstr
      floatAttrib["DefaultValue"] = "0.0"
      floatSlots.add(floatAttrib)

  finalCode["FloatAttrib"] = floatSlots
  finalCode["SetFloats"] = floatSlots

  # finally compile
  fragGlsl[].setoptions(glslOptions)
  var fragCompiled = fragGlsl.AsCompiler()[].compile()
  finalCode["PixelShaderBody"] = $fragCompiled.cstr
  deleteCompilerGLSL fragGlsl
  
  close vert
  close frag

  return shaderJsTemplate.render finalCode

var vert = openSpirv("vert.spv")
var frag = openSpirv("frag.spv")
echo compileToWebGL1(vert, frag)