extends Sprite2D

#TODO: add graphics and 

# follow mouse cursor
func _process(delta: float) -> void:
	self.position = get_global_mouse_position()
	
	
#on click, move 
