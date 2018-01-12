#version 450

uniform mat4 matrix_model;
uniform mat4 matrix_viewProjection;

in vec3 aPosition;
in vec2 aUv0;

out vec2 vUv0;

void main(void)
{
    vUv0 = aUv0;
    gl_Position = matrix_viewProjection * matrix_model * vec4(aPosition, 1.0);
}