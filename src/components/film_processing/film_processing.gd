extends Node2D

@onready var sprite_2d := $Sprite2D
@onready var color_rect := $ColorRect2
@onready var timer = $Timer
@onready var label = $Label

var current_pic: int = 0
var current_action = null

var d_v: float = 1
var c_v: float = 1

func _ready():
	label.text = str(current_pic) + "/" + str(Globals.evidenceCount)
	sprite_2d.set_texture(Globals.evidencePics[current_pic])
	

func _on_developer_button_pressed():
	current_action = "d"
	timer.start()
	

func _on_stop_bath_button_pressed():
	color_rect.material.set_shader_parameter("aperature_grille_rate", 1)
	color_rect.material.set_shader_parameter("crt_scan_line_color", 0)
	current_action = "s"
	

func _on_fixer_button_pressed():
	if current_pic == Globals.evidenceCount - 1:
		Globals.evidenceCount = 0
		Globals.evidencePics.clear()
		get_tree().reload_current_scene()
	else:
		current_action = null
		d_v = 1
		c_v = 1
		
		color_rect.material.set_shader_parameter("aperature_grille_rate", 0.4)
		color_rect.material.set_shader_parameter("crt_scan_line_color", 0.347)
		color_rect.material.set_shader_parameter("white_noise_rate", 1)
		color_rect.material.set_shader_parameter("crt_curve", 1)
		
		current_pic = current_pic + 1
		
		label.text = str(current_pic) + "/" + str(Globals.evidenceCount)
		sprite_2d.set_texture(Globals.evidencePics[current_pic])
		
	

func _on_timer_timeout():
	if current_action == "d":
		d_v = d_v - 0.1
		color_rect.material.set_shader_parameter("white_noise_rate", d_v)
	elif current_action == "s":
		c_v = c_v - 0.1
		color_rect.material.set_shader_parameter("crt_curve", c_v)
		
	
