{.compile:"spirv_glsl.cpp".}
{.compile:"spirv_cross.cpp".}
{.compile:"spirv_cfg.cpp".}

import cpp_utilities, gen_spirv_common, gen_spirv_glsl

var shaderData = initstdvector_uint32t()
var compiler = cppnew initCompilerGLSL(shaderData)
discard compiler[].compile()