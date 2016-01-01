#define SHADER_NAME skybox.vert

attribute vec3 aPosition;

uniform mat4 uModel;
uniform mat4 uView;
uniform mat4 uProjection;

varying vec3 vNorm;

void main() {
    gl_Position = uProjection * uView * uModel * vec4(aPosition, 1.0);
    vNorm = aPosition;
}
