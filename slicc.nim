{.compile:"spirv_cross.cpp".}
{.compile:"spirv_cfg.cpp".}
{.compile:"spirv_glsl.cpp".}
{.compile:"spirv_hlsl.cpp".}
import cpp_utilities, gen_spirvcross, math
proc pushback(vec: spirv, v: uint32) {.importcpp:"#.push_back(#)".}
proc cstr(str: astring): cstring {.importcpp:"#.c_str()".}

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
var glslCompiled = glsl.AsCompiler()[].compile()
echo glslCompiled.cstr

var hlsl = cppnew initCompilerHLSL(spirvData)
var hlslCompiled = hlsl[].compile()
echo hlslCompiled.cstr

