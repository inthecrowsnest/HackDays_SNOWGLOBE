extends Sprite2D

@export var orange: Sprite2D
@export var purple: Sprite2D
@export var diamond: Sprite2D
@export var topaz: Sprite2D
@export var emerald: Sprite2D
@export var sapphire: Sprite2D
@export var ruby: Sprite2D


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		orange.visible = false 
		GLOBALS.points += 1  


func _on_area_2d_input_event_purple(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		purple.visible = false 
		GLOBALS.points += 1


func _on_area_2d_input_event_diamond(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		diamond.visible = false 
		GLOBALS.points += 1

func _on_area_2d_input_event_topaz(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		topaz.visible = false 
		GLOBALS.points += 1

func _on_area_2d_input_event_emerald(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		emerald.visible = false 
		GLOBALS.points += 1

func _on_area_2d_input_event_sapphire(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		sapphire.visible = false
		GLOBALS.points += 1 

func _on_area_2d_input_event_ruby(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		ruby.visible = false 
		GLOBALS.points += 1
