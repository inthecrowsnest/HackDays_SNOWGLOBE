extends ProgressBar

func _on_value_changed(value: float) -> void:
	if self.value == 100.0:
		get_tree().change_scene_to_file("res://scenes/gameOver.tscn")
