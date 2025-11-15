extends Sprite2D

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
  # Check if the event is a mouse button click
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			queue_free()


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		queue_free()
