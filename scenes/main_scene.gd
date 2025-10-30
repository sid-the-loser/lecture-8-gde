extends Node2D


func _on_player_fuel_updated(fuel: float) -> void:
	if fuel <= 0.0:
		pass
