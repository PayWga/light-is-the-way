extends Node2D

const BULLET = preload("res://Prefabs/bullet.tscn")

func _physics_process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("LMB"):
		shoot()
	
func shoot():
	var new_bullet = BULLET.instantiate()
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	get_tree().root.add_child(new_bullet)
