extends Label


func _on_player_fuel_updated(fuel: float) -> void:
	text = "Fuel: " + str(int(round(fuel)))
