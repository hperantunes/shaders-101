shader_type canvas_item;

group_uniforms FirstGroup;
uniform float my_float: hint_range(1.0, 10.0) = 5.0;
uniform int my_int = 10;

group_uniforms SecondGroup;
uniform bool my_bool;
uniform vec4 my_color: source_color;

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
	
	COLOR = texture(TEXTURE, UV) * my_color;
}
