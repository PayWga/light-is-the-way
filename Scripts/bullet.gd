extends Area2D

const SPEED = 800.0


func _physics_process(delta):
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * SPEED * delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
