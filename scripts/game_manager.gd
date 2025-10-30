extends Node

func _process(delta: float) -> void:
	if Input.is_action_pressed("quit"):
		get_tree().quit(0)
