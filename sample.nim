{.experimental.}

type
  float4* = object
  float2* = object
  float4x4* = object

  In*[T] = object
    value*: T
  Out*[T] = object
    value*: T
  Uniform*[T] = object
    value*: T
  
  Texture2D* = object
  Sampler* = object

  Texturing* = concept var x
    x.Texture0 is Texture2D
    x.TexCoord0 is In[float2]
    x.Sampler is Sampler

  ShaderBaseStream* = concept var x
    x.ShadingPosition is Out[float4] # SV_Position
    x.ColorTarget0 is Out[float4] # SV_Target0
    x.Depth is Out[float] # SV_Depth

  ShaderBase* = concept var x
    x.VSMain()
    x.PSMain()

  SpriteBase* = concept var x
    x is ShaderBaseStream
    x is Texturing
    x.MatrixTransform is Uniform[float4x4]
    x.Position is In[float4]
    x.Shading()

proc `*`*(a: float4x4, b: float4): float4 {.nodecl, importcpp:"# * #".}
proc `*`*(a: float4, b: float4): float4 {.nodecl, importcpp:"# * #".}
proc `*`*(a: float4, b: float4x4): float4 {.nodecl, importcpp:"# * #".}
proc `*`*(a: float4, b: float): float4 {.nodecl, importcpp:"# * #".}

proc Sample*(texture: Texture2D, sampler: Sampler, uv: float2): float4 =
  discard

proc VSMain*(shader: var SpriteBase) =
  var mulRes = shader.Position.value * shader.MatrixTransform.value
  shader.ShadingPosition.value = mulRes

proc Shading*(shader: var SpriteBase): float4 =
  echo "Shading Shading"
  return shader.Texture0.Sample(shader.Sampler, shader.TexCoord0.value)

proc PSMain*(shader: var SpriteBase) =
  shader.ColorTarget0.value = shader.Shading()

proc Render*(shader: var ShaderBase) =
  shader.VSMain()
  shader.PSMain()


