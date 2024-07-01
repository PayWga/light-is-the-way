extends Node2D

@export var DashCooldown: int
var DashRange: int
var DashInvulnerabilityTime: int
var DashDamage: int
var IsOnCooldown = false
@onready var CooldownTimer = self.get_child(0)


# Called when the node enters the scene tree for the first time.
func _ready():
	CooldownTimer.wait_time = DashCooldown


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func Dash():
	if IsOnCooldown:
		pass
	else:
		CooldownStart()


func CooldownStart():
	IsOnCooldown = true
	CooldownTimer.start()


func _on_dash_timer_timeout():
	IsOnCooldown = false
