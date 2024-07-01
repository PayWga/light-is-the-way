extends Area2D

var SPEED = 0
var DAMAGE = 0


func _physics_process(delta):
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * SPEED * delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func setProjectileSpeed(ProjectileSpeed):
	SPEED = ProjectileSpeed

func setProjectileDamage(ProjectileDamage):
	DAMAGE = ProjectileDamage
