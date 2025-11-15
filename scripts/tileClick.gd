extends TileMapLayer

var tiledata;
@export var iceLayer: TileMapLayer;
@export var snowLayer: TileMapLayer;
@export var tileHover: Sprite2D;

func _process(float) -> void:
	var cell_coords = map_to_local(local_to_map(get_global_mouse_position()))
	
	tileHover.position = cell_coords


#capture mouse press
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("mouse_click"):
		var cell_coords = local_to_map(get_global_mouse_position())
		var deleted = false
		
		## check if there is an ice block on this coord
		tiledata = iceLayer.get_cell_tile_data(cell_coords)
		
		print(tiledata)
		if tiledata != null:
			print("NOT NULL")
			set_cell(cell_coords, iceLayer.get_cell_source_id(cell_coords), Vector2i(-1, -1), -1)
			get_viewport().set_input_as_handled()
		
		# else, check if there is a snow block on this coord
		print(tiledata)
		tiledata = snowLayer.get_cell_tile_data(cell_coords)
		#print(tiledata)
		if tiledata:
			set_cell(cell_coords, snowLayer.get_cell_source_id(cell_coords), Vector2i(-1, -1), -1)
			#return
	#
