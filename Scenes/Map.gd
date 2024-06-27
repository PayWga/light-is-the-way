extends Node2D

var lamp = preload("res://Prefabs/lamp.tscn")
var HEIGHT = 2000
var WIDTH = 4000

func _ready():
	lamp_spawner()

func lamp_spawner():
	var MIN_WIDTH = WIDTH - WIDTH
	var MAX_WIDTH = WIDTH/7
	for i in range(0, 7):
		print(MIN_WIDTH)
		print(MAX_WIDTH)
		var new_lamp = lamp.instantiate()
		var lamp_pos = Vector2(randi_range(MIN_WIDTH, MAX_WIDTH), randi_range(0, HEIGHT))
		new_lamp.global_position = lamp_pos
		add_child(new_lamp)
		MIN_WIDTH += WIDTH/7
		MAX_WIDTH += WIDTH/7
