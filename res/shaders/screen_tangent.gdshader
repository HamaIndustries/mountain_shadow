shader_type canvas_item;

uniform float visible;

float sum_color(vec4 c) {
	return (c.r+c.g+c.b)/3.0f;
}

void fragment() {
	float v = visible * 10.0;
	COLOR = texture(TEXTURE, UV);
	float cmod = (1.0 - sum_color(COLOR)) * (sin(TIME*5.0 - UV.y*50.0) + 1.0)/2.0 - (1.0+v*tan(TIME - UV.x*20.0))/2.0;
	COLOR.rgb = COLOR.rgb * cmod;
}