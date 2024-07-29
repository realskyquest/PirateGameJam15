extends Area2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	if Globals.missionType == 0:
		animated_sprite.play("1")
	elif Globals.missionType == 1:
		animated_sprite.play("2")
	elif Globals.missionType == 2:
		animated_sprite.play("3")
		
	

const PICKUP = preload("res://assets/audio/pickup.wav")

func _on_body_entered(_body: PlayerClass) -> void:
	SoundManager.play_sound(PICKUP)
	
	Globals.evidenceCount += 1
	
	var img: Image = get_viewport().get_texture().get_image()
	var tex: Texture = ImageTexture.create_from_image(img)
	Globals.evidencePics.append(tex)
	
	self.queue_free()
	
