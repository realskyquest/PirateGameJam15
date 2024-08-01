extends Node2D

signal play_button_has_been_pressed

@onready var ui := $UI

func _ready() -> void:
	ui.show()
	

func _on_play_button_pressed() -> void:
	play_button_has_been_pressed.emit()
	

func _on_return_ui_button_pressed() -> void:
	ui.show()
	
