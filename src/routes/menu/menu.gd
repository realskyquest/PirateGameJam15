extends Node2D

signal play_button_has_been_pressed

@onready var ui := $UI
@onready var settings_ui := $SettingsUI
@onready var credits_ui := $CreditsUI

func _ready() -> void:
	settings_ui.hide()
	credits_ui.hide()
	ui.show()
	

func _on_play_button_pressed() -> void:
	play_button_has_been_pressed.emit()
	

func _on_return_ui_button_pressed() -> void:
	settings_ui.hide()
	credits_ui.hide()
	ui.show()
	

func _on_settings_button_pressed() -> void:
	ui.hide()
	settings_ui.show()
	

func _on_credits_button_pressed() -> void:
	ui.hide()
	credits_ui.show()
	
