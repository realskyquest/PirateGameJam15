extends CharacterBody2D

const DEATH = preload("res://assets/audio/death.wav")

enum States {
	IDLE,
	WANDER,
}

@export var speed: int = 30
@export var detectionRange: int = 120

var state: States = States.IDLE
var reachedWanderLocation: bool = false

@onready var animated_sprite := $AnimatedSprite2D
@onready var collision_shape := $CollisionShape2D
@onready var player_detection_zone := $PlayerDetectionZone
@onready var enemy_ray_cast = $EnemyRayCast2D
@onready var navigation_agent = $Navigation/NavigationAgent2D
@onready var wander_timer = $WanderTimer

func UpdateRayCast(player: PlayerClass):
	var direction: Vector2 = global_position.direction_to(player.position)
	var distance: float = global_position.distance_to(player.position)
	enemy_ray_cast.target_position = direction * distance
	

func RandomWanderLocation() -> Vector2:
	var x = randi_range(-100, 100)
	var y = randi_range(-100, 100)
	
	return Vector2(x, y)
	

func KillPlayer() -> void:
	if player_detection_zone.CanSeePlayer():
		var player: PlayerClass = player_detection_zone.player
		
		if player != null:
			UpdateRayCast(player)
			if !enemy_ray_cast.is_colliding() && global_position.distance_to(player.position) < detectionRange:
				SoundManager.play_sound(DEATH)
				get_tree().reload_current_scene()
				
			
		
	

func _ready() -> void:
	randomize()
	
	if Globals.missionType == 0:
		animated_sprite.play("IdleGov")
	elif Globals.missionType == 1:
		animated_sprite.play("IdleCult")
	elif Globals.missionType == 2:
		animated_sprite.play("IdleAnomaly")
		
	

func _physics_process(_delta: float):
	match state:
		States.IDLE:
			velocity = Vector2.ZERO
			navigation_agent.target_position = self.position + RandomWanderLocation()
			state = States.WANDER
		States.WANDER:
			if navigation_agent.is_navigation_finished() == true:
				if reachedWanderLocation == false:
					reachedWanderLocation = true
					wander_timer.start(0.1)
					
				
				velocity = Vector2.ZERO
				
			
			if reachedWanderLocation == false:
				velocity = global_position.direction_to(navigation_agent.get_next_path_position()) * speed
				
			
		
	
	move_and_slide()
	

func _on_update_navigation_timer_timeout():
	KillPlayer()
	

func _on_wander_timer_timeout():
	reachedWanderLocation = false
	state = States.IDLE
	
