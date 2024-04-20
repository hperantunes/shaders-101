shader_type canvas_item;

void vertex() {
	if (VERTEX.x < 0. && VERTEX.y < 0.) {
		VERTEX += vec2(-100., -20.);
	}
	
}

void fragment() {
	
}
