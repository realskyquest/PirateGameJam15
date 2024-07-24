class_name PlayerClass
extends CharacterBody2D

@export var speed: int = 200;

@onready var animated_sprite := $AnimatedSprite2D

func Flip(direction: Vector2) -> void:
	if direction.x < 0:
		animated_sprite.flip_h = true;
	elif direction.x > 0:
		animated_sprite.flip_h = false;
		
	

func GetInput() -> void:
	var direction: Vector2 = Input.get_vector("left", "right", "up", "down");
	velocity = direction * speed
	
	if direction != Vector2.ZERO:
		animated_sprite.play("Walk")
	else:
		animated_sprite.play("Idle")
		
	

func _physics_process(_delta: float) -> void:
	Flip(velocity);
	GetInput();
	move_and_slide();
	
