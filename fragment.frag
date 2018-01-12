#version 450

in vec2 vUv0;

uniform sampler2D uDiffuseMap;
uniform sampler2D uHeightMap;

uniform float uTime;

out vec4 FragColor;

void main(void)
{
    float height = texture(uHeightMap, vUv0).r;
    vec4 color = texture(uDiffuseMap, vUv0);
    if (height < uTime) {
      discard;
    }
    if (height < (uTime+0.04)) {
      color = vec4(0, 0.2, 1, 1.0);
    }
    FragColor = color;
}