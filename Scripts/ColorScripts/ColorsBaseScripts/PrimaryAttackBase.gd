extends Node2D

var AttackDamage: int
var AttackCooldown: int
var ProjectileSpeed: int
var Projectile: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func Shoot():
	var new_bullet = Projectile.instantiate()
	new_bullet.global_position = %ShootingPoint.global_position
	new_bullet.global_rotation = %ShootingPoint.global_rotation
	get_tree().root.add_child(new_bullet)
	new_bullet.setProjectileSpeed(ProjectileSpeed)
	new_bullet.setProjectileDamage(AttackDamage)
