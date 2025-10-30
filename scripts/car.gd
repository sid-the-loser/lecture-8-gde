class_name Car
extends CharacterBody2D

@export var player_controlled: bool = false
@export var acceleration: float = 10
@export var max_speed = 300 # player could have the max speed of 400

var mov_direction: Vector2 = Vector2.ZERO

var auto_pilot_direction: Vector2 = Vector2(0, -1)

func _process(delta: float) -> void:
	if player_controlled:
		pass
		
	else:
		mov_direction = auto_pilot_direction * max_speed

func _physics_process(delta: float) -> void:
	velocity = velocity.lerp(mov_direction, acceleration * delta)
	
	move_and_slide()
