extends Node2D

func _on_timer_timeout():
	$Sprite2D.set_texture(null)
	var img := get_viewport().get_texture().get_image()
	
	var tex := ImageTexture.create_from_image(img)
	
	$Sprite2D.set_texture(tex)
