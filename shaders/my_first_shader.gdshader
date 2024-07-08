shader_type canvas_item;

void vertex() {
	
	float speed = 2.0;
	
	if (VERTEX.x < 0. && VERTEX.y < 0.) {
		//VERTEX += vec2(-100., -20.);
	}
	//VERTEX += vec2(cos(TIME * speed) * 100.0, 0.0);
	//VERTEX += vec2(0.0, sin(TIME * speed) * 100.0);
}

void fragment() {
	vec4 color1 = vec4(1.0, 0.0, 0.0, 1.0);
	vec4 color2 = vec4(0.0, 1.0, 0.0, 1.0);
	
	float mix_percentage = (sin(TIME * 5.0) + 1.0) * 0.5;
	vec4 mixed_color = mix(color1, color2, mix_percentage);
	
	COLOR = texture(TEXTURE, UV) * mixed_color;
}
