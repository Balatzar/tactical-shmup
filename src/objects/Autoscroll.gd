extends Camera2D

export var speed: = Vector2(0.0, 100.0)

func _process(delta: float) -> void:
	var speedy: = abs(Global.mouse_speed.x + Global.mouse_speed.y)
	#print(Global.mouse_speed)
	#print(speedy)
	offset.y -= min(speed.y * speedy, 500.0) * delta
	