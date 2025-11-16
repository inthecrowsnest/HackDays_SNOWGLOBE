extends Button

func _on_pressed() -> void:
	GLOBALS.points = 0
	get_tree().change_scene_to_file("res://scenes/main.tscn")
