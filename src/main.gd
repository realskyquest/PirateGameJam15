extends Node2D

const MENU = preload("res://src/routes/menu/menu.tscn")
const GAME = preload("res://src/routes/game/game.tscn")

var currentScene: Node2D = null

@onready var loading_screen = $LoadingScreen

func _ready():
	var menuScene = MENU.instantiate()
	self.add_child(menuScene)
	menuScene.play_button_has_been_pressed.connect(PlayGame)
	currentScene = menuScene
	

func PlayGame():
	currentScene.queue_free()
	loading_screen.show()
	loading_screen.get_node("LoadingScreenTimer").start(5)
	

func _on_loading_screen_timer_timeout():
	var gameScene = GAME.instantiate()
	self.add_child(gameScene)
	currentScene = gameScene
	
