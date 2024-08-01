extends Node2D

const THE_LOADING_ = preload("res://assets/audio/music/The Loading?.mp3")
const THE_WORLD_ = preload("res://assets/audio/music/The World?.mp3")
const MENU := preload("res://src/routes/menu/menu.tscn")
const GAME := preload("res://src/routes/game/game.tscn")
const FILM_PROCESSING := preload("res://src/components/film_processing/film_processing.tscn")

var currentScene: Node2D = null

@onready var loading_screen := $LoadingScreen
@onready var game_ui := $GameUI
@onready var hide_loading_screen_timer := $HideLoadingScreenTimer
@onready var label = $GameUI/Label

func _ready():
	SoundManager.play_music(THE_LOADING_, 1)
	if Globals.evidenceCount > 0:
		var filmScene := FILM_PROCESSING.instantiate()
		self.add_child(filmScene)
		currentScene = filmScene
	else:
		var menuScene := MENU.instantiate()
		self.add_child(menuScene)
		menuScene.play_button_has_been_pressed.connect(PlayGame)
		currentScene = menuScene
		
	

func _process(_delta):
	if Globals.missionType == 0:
		label.text = "SHADOW GOVERMENT AREA"
	elif Globals.missionType == 1:
		label.text = "UNKOWN CULT! AREA"
	elif Globals.missionType == 2:
		label.text = "ANOMALY??? AREA"
		
	

func PlayGame():
	SoundManager.play_music(THE_WORLD_, 1)
	currentScene.queue_free()
	loading_screen.show()
	var gameScene = GAME.instantiate()
	self.add_child(gameScene)
	currentScene = gameScene
	currentScene.get_node("Player").speed = 0
	hide_loading_screen_timer.start(2)
	

func _on_hide_loading_screen_timer_timeout():
	currentScene.get_node("Player").speed = 200
	currentScene.get_node("Player/Camera2D").enabled = true
	loading_screen.hide()
	game_ui.show()
	

func _on_button_pressed():
	get_tree().reload_current_scene()
	
