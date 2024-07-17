extends CharacterBody2D

@export var acceleration: int = 500;
@export var maxSpeed: int = 180;
@export var friction: int = 700;

@onready var animated_sprite := $AnimatedSprite2D

func getInput(delta: float) -> void:
	var direction: Vector2 = Input.get_vector("left", "right", "up", "down");
	
	if direction != Vector2.ZERO:
		animated_sprite.play("Walk")
		velocity = velocity.move_toward(direction * maxSpeed, acceleration * delta);
	else:
		animated_sprite.play("Idle")
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta);
		
	

func flip(direction: Vector2) -> void:
	if direction.x > 0:
		animated_sprite.flip_h = true;
	elif direction.x < 0:
		animated_sprite.flip_h = false;
		
	

func _physics_process(delta: float) -> void:
	getInput(delta);
	flip(velocity);
	move_and_slide();
	
