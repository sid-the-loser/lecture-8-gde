class_name Car
extends CharacterBody2D

@export var player_controlled: bool = false
@export var acceleration: float = 10
@export var max_speed = 300 # player could have the max speed of 400

var mov_direction: Vector2 = Vector2.ZERO

func _process(delta: float) -> void:
	if player_controlled:
		pass

func _physics_process(delta: float) -> void:
	pass
