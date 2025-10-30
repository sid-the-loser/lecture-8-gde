class_name Car
extends CharacterBody2D

signal fuel_updated(fuel: float)

@export var player_controlled: bool = false

var acceleration: float = 10
var max_speed = 300 # player could have the max speed of 400

var mov_direction: Vector2 = Vector2.ZERO

var fuel: float = 100

var auto_pilot_direction: Vector2 = Vector2(0, -1)

func _ready() -> void:
	if player_controlled:
		max_speed = 400

func _process(delta: float) -> void:
	if player_controlled:
		pass
		
	else:
		mov_direction = auto_pilot_direction * max_speed

func _physics_process(delta: float) -> void:
	velocity = velocity.lerp(mov_direction, acceleration * delta)
	tick_fuel(delta)
	
	move_and_slide()

func tick_fuel(delta: float) -> void:
	fuel -= delta
	fuel_updated.emit(fuel)
