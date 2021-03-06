# version 330 core
in vec2 TexCoords;

uniform vec4 change;
uniform vec2 center;
uniform float radius;
uniform sampler2D inputTex;

layout(location = 3) out vec4 velocity1;

void main() {
	float dx = center.x - TexCoords.x;
	float dy = center.y - TexCoords.y;
	vec4 cur = texture(inputTex, TexCoords);
	velocity1 = cur + change * exp(-(dx * dx + dy * dy) / radius);
}