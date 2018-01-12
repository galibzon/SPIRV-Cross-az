import moustachu

let shaderJsTemplate = """
/*jshint esversion: 6 */

var {{ShaderName}} = pc.createScript('{{ShaderName}}');

{{#FloatAttrib}}
{{ShaderName}}.attributes.add({{AttribName}}, { type: 'number', default: {{DefaultValue}} });

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
{{VertexShaderBody}}
`;

    var pixelShader = `
{{PixelShaderBody}}
`;

    var shaderDefinition = {
        attributes: {
            aPosition: pc.SEMANTIC_POSITION,
            aUv0: pc.SEMANTIC_TEXCOORD0
        },
        vshader: vertexShader,
        fshader: fragmentShader
    };

    // Create the shader from the definition
    this.shader = new pc.Shader(gd, shaderDefinition);

    // Create a new material and set the shader
    this.material = new pc.Material();
    this.material.setShader(this.shader);

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

var shaderContext = newContext()

shaderContext["ShaderName"] = "MyCustomShader"

echo render(shaderJsTemplate, shaderContext)