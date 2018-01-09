{.compile:"spirv_cross.cpp".}
{.compile:"spirv_cfg.cpp".}
{.compile:"spirv_glsl.cpp".}
{.compile:"spirv_hlsl.cpp".}
{.compile:"spirv_cpp.cpp".}
import cpp_utilities, gen_spirvcross, math
proc pushback(vec: spirv, v: uint32) {.importcpp:"#.push_back(#)".}
proc cstr(str: astring): cstring {.importcpp:"#.c_str()".}
proc size(res: stdvector_Resource): csize {.importcpp:"#.size()".}
proc `[]`(res: var stdvector_Resource, index: cint): Resource {.importcpp:"#[#]".}

# ..\tmp\glslang-install\bin\glslangValidator.exe -H -V -o test.spv shaders\frag\basic.frag
var spirvFile = open("test.spv")
var spirvFileSize32 = int ceil int(spirvFile.getFileSize) / 4
var buffer = newSeq[uint8](spirvFile.getFileSize)
var spirvData = initspirv()
assert(spirvFile.readBytes(buffer, 0, spirvFile.getFileSize) == spirvFile.getFileSize)
for i in 0..<spirvFileSize32:
  var index = i * 4
  var val = cast[ptr uint32](addr(buffer[index]))
  spirvData.pushback(val[])

var glsl = cppnew initCompilerGLSL(spirvData)
var glslOptions = initOptions()
# glslOptions.es = true
# glslOptions.version = 310
glslOptions.vulkansemantics = true
glsl[].setoptions(glslOptions)
# glsl.AsCompiler()[].buildcombinedimagesamplers()
var glslCompiled = glsl.AsCompiler()[].compile()
echo "GLSL:"
echo glslCompiled.cstr

var resources = glsl.AsCompiler()[].getshaderresources()

template printInfo(): untyped =
  var decorationSet = glsl.AsCompiler()[].getdecoration(resource.id, spvDecoration.DecorationDescriptorSet)
  var decorationBinding = glsl.AsCompiler()[].getdecoration(resource.id, spvDecoration.DecorationBinding)
  var decorationLocation = glsl.AsCompiler()[].getdecoration(resource.id, spvDecoration.DecorationLocation)
  echo resource.name.cstr, " ", $decorationSet, " ", $decorationBinding, " ", $decorationLocation

var sampledImages = resources.sampledimages
echo "SAMPLED IMAGES:"
for i in 0..<sampledImages.size:
  var resource = sampledImages[cint i]
  printInfo()

var storageImages = resources.storageimages
echo "STORAGE IMAGES:"
for i in 0..<storageImages.size:
  var resource = storageImages[cint i]
  printInfo()

var separateImages = resources.separateimages
echo "SEPARATE IMAGES:"
for i in 0..<separateImages.size:
  var resource = separateImages[cint i]
  printInfo()
  
var stageInputs = resources.stageinputs
echo "STAGE INPUTS:"
for i in 0..<stageInputs.size:
  var resource = stageInputs[cint i]
  printInfo()

var stageOutputs = resources.stageoutputs
echo "STAGE INPUTS:"
for i in 0..<stageOutputs.size:
  var resource = stageOutputs[cint i]
  printInfo()

# var hlsl = cppnew initCompilerHLSL(spirvData)
# var hlslCompiled = hlsl[].compile()
# echo "HLSL:"
# echo hlslCompiled.cstr

# var cpp = cppnew initCompilerCPP(spirvData)
# cpp.AsCompilerGLSL.AsCompiler()[].buildcombinedimagesamplers()
# var cppCompiled = cpp[].compile()
# echo "CPP:"
# echo cppCompiled.cstr

