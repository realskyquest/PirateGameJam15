extends Node2D

signal play_button_has_been_pressed

@onready var ui = $UI
@onready var settings_ui = $SettingsUI
@onready var credits_ui = $CreditsUI

func _ready():
	settings_ui.hide()
	credits_ui.hide()
	ui.show()
	

func _on_play_button_pressed():
	play_button_has_been_pressed.emit()
	

func _on_return_ui_button_pressed():
	settings_ui.hide()
	credits_ui.hide()
	ui.show()
	

func _on_settings_button_pressed():
	ui.hide()
	settings_ui.show()
	

func _on_credits_button_pressed():
	ui.hide()
	credits_ui.show()
	
