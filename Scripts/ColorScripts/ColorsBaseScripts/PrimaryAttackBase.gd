extends Node2D

var AttackDamage: int
@export var AttackCooldown: float
var ProjectileSpeed: int
var IsOnCooldown = false
var Projectile: PackedScene
@onready var CooldownTimer = self.get_child(0)


# Called when the node enters the scene tree for the first time.
func _ready():
	CooldownTimer.wait_time = AttackCooldown


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func Shoot():
	if IsOnCooldown:
		pass
	else:
		CooldownStart()
		var new_bullet = Projectile.instantiate()
		new_bullet.global_position = %ShootingPoint.global_position
		new_bullet.global_rotation = %ShootingPoint.global_rotation
		get_tree().root.add_child(new_bullet)
		new_bullet.setProjectileSpeed(ProjectileSpeed)
		new_bullet.setProjectileDamage(AttackDamage)


func CooldownStart():
	IsOnCooldown = true
	CooldownTimer.start()


func _on_primary_timer_timeout():
	IsOnCooldown = false
