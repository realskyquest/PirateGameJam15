extends Node2D

const PINE = preload("res://src/models/enviroment/pine.tscn")
const OAK = preload("res://src/models/enviroment/oak.tscn")

func _ready():
	randomize()
	if randi_range(0, 1) == 0:
		var pineScene: StaticBody2D = PINE.instantiate()
		self.add_child(pineScene)
	else:
		var oakScene: StaticBody2D = OAK.instantiate()
		self.add_child(oakScene)
		
	
