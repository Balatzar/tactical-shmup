extends KinematicBody2D

export var speed: = Vector2(100.0, 100.0)

var _last_position: Vector2
var _moving: = false

func _physics_process(delta: float) -> void:
	var mouse_position: = get_global_mouse_position()
	position.x = lerp(position.x, mouse_position.x, 0.1)
	position.y = lerp(position.y, mouse_position.y, 0.1)
	
	Global.mouse_speed = _last_position - mouse_position
	_last_position = mouse_position
	if _moving:
		_moving = false
	else:
		Global.mouse_speed = Vector2.ZERO


func _input(event):
	_moving = true