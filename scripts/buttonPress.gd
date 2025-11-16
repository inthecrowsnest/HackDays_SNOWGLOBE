extends TextureButton

#TODO: will set mouse cursor / init a ice pick/hammer to follow mouse for playability

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_hammer_toggle_pressed() -> void:
	# SET CURSOR TO HAMMER
	GLOBALS.radius = 1
	# 


func _on_ice_pick_toggle_pressed() -> void:
	# SET CURSOR TO ICE PIC
	
	# set radius to 1
	GLOBALS.radius = 0
	
