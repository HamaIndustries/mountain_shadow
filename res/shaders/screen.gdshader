shader_type canvas_item;

// apply various CRT post-processing effects

uniform float scan_rate = 0.0;

float sum_color(vec4 c) {
	return (c.r+c.g+c.b)/3.0f;
}

void fragment() {
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV);
	
	float scan = (sin(TIME*5.0 - UV.y * 5000.0) + 1.0)/4.0+0.5;
	COLOR.rgb = COLOR.rgb * scan;
}

