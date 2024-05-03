shader_type canvas_item;

void fragment() {
	COLOR = texture(TEXTURE, UV);
	float ux = abs(UV.x - 0.5);
	float uy = abs(UV.y - 0.5);
	float flash = sin(UV.y*8.0 + TIME*200.0);
	COLOR.rgb += vec3(1.0-ux*2.0-flash * pow(uy, 0.3));
}

void vertex() {
	//VERTEX = UV;
}