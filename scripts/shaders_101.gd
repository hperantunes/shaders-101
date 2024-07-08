extends Node2D

@onready var sprite: Sprite2D = $Sprite2D

#func _process(delta):
	#var time = Time.get_ticks_msec() / 1000.0
	#var a = sin(0.0)
	#
	#print("TIME: " + str(time))
	#print("a: " + str(a))


func _process(delta):
	if Input.is_action_just_pressed("set_color"):
		var new_color = Color(randf(), randf(), randf())
		sprite.material.set_shader_parameter("my_color", new_color)
