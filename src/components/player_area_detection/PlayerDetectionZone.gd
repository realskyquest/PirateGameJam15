extends Area2D

var player = null

func CanSeePlayer():
	return player != null

func _on_body_entered(body: CharacterBody2D) -> void:
	player = body

func _on_body_exited(_body: CharacterBody2D) -> void:
	player = null
