import sample

type
  MyShader = object
    ShadingPosition: Out[float4] # SV_Position
    ColorTarget0: Out[float4] # SV_Target0
    Depth: Out[float] # SV_Depth
    Texture0: Texture2D
    TexCoord0: In[float2]
    Sampler: Sampler
    MatrixTransform: Uniform[float4x4]
    Position: In[float4]

proc Shading(shader: var MyShader): float4 =
  echo "Shading MyShader"
  return shader.Texture0.Sample(shader.Sampler, shader.TexCoord0.value) * 10.0

when isMainModule:
  var myShader: MyShader
  myShader.Render()