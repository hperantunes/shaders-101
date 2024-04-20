shader_type canvas_item;

void vertex() {
	
	if (VERTEX.x < 0. && VERTEX.y < 0.) {
		//VERTEX += vec2(-100., -20.);
	}
	VERTEX += vec2(cos(TIME * 2.0) * 100.0, 0.0);
	VERTEX += vec2(0.0, sin(TIME * 2.0) * 100.0);
}

void fragment() {
	
}
