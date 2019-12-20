extends Area2D

var missile: = preload("res://src/actors/enemies/Missile.tscn")

onready var missile_container: = $BulletContainer
onready var shoot_timer: = $ShootTimer

var target = null

func _ready() -> void:
	shoot_timer.wait_time = 1.5
	shoot_timer.start()
	target = get_tree().get_root().get_node("TestLevel/PlayerShip")

func shoot1() -> void:
	print('shooting')
	var dir = global_position - target.global_position
	var m = missile.instance()
	missile_container.add_child(m)
	m.start_at(dir.angle(), global_position)

func _on_ShootTimer_timeout() -> void:
	shoot1()
	shoot_timer.start()
