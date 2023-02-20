#version 450

	mat4 worldMat;
	mat4 viewMat;
	mat4 prjMat;
} ubo;


void main() {
	gl_Position = ubo.prjMat * ubo.viewMat * ubo.worldMat * vec4(inPosition, 1.0);
	
}