extends Node2D

const MENU = preload("res://src/routes/menu/menu.tscn")
const GAME = preload("res://src/routes/game/game.tscn")

var currentScene: Node2D = null

func _ready():
	var menuScene = MENU.instantiate()
	self.add_child(menuScene)
	menuScene.play_button_has_been_pressed.connect(PlayGame)
	currentScene = menuScene
	

func PlayGame():
	var gameScene = GAME.instantiate()
	currentScene.queue_free()
	self.add_child(gameScene)
	currentScene = gameScene
	
