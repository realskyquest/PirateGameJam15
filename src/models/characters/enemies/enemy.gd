extends CharacterBody2D

enum States {
	IDLE,
	CHASE,
}

@export var speed: int = 100
@export var detectionRange: int = 120

var state: States = States.IDLE
var chasingAfterPlayer: bool = false

@onready var animated_sprite := $AnimatedSprite2D
@onready var collision_shape := $CollisionShape2D
@onready var player_detection_zone := $PlayerDetectionZone
@onready var enemy_ray_cast = $EnemyRayCast2D
@onready var navigation_agent = $Navigation/NavigationAgent2D

# Updates raycast to player position
func UpdateRayCast(player: PlayerClass):
	var direction: Vector2 = global_position.direction_to(player.position)
	var distance: float = global_position.distance_to(player.position)
	enemy_ray_cast.target_position = direction * distance
	

func SeekPlayer() -> void:
	if player_detection_zone.CanSeePlayer():
		var player: PlayerClass = player_detection_zone.player
		
		if player != null:
			UpdateRayCast(player)
			if !enemy_ray_cast.is_colliding() && global_position.distance_to(player.position) < detectionRange:
				state = States.CHASE
				
			
		
	

func ChasePlayer() -> void:
	var player: PlayerClass = player_detection_zone.player
	
	if player != null:
		UpdateRayCast(player)
		
		if !enemy_ray_cast.is_colliding() && global_position.distance_to(player.position) < detectionRange:
			chasingAfterPlayer = true
			
		
		if chasingAfterPlayer:
			velocity = global_position.direction_to(navigation_agent.get_next_path_position()) * speed
			
		
	else:
		chasingAfterPlayer = false
		state = States.IDLE
		
	

func _physics_process(_delta: float) -> void:
	match state:
		States.IDLE:
			animated_sprite.play("Idle")
			velocity = Vector2.ZERO
			SeekPlayer()
		States.CHASE:
			animated_sprite.play("Walk")
			ChasePlayer()
			
		
	
	move_and_slide()
	

func _on_update_navigation_timer_timeout():
	if player_detection_zone.CanSeePlayer():
		var player: PlayerClass = player_detection_zone.player
		
		if player != null:
			navigation_agent.target_position = player.global_position
			
		
	
