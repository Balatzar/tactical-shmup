extends Area2D

var vel: = Vector2()
export var speed: = 800

func _process(delta: float) -> void:
	position = position + vel * delta

func start_at(dir, pos) -> void:
	print(dir)
	rotation = dir
	position = pos
	vel = Vector2(speed, 0).rotated(dir + PI/2)

func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free()
