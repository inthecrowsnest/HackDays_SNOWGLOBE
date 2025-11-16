extends TileMapLayer

var tiledata;
@export var iceLayer: TileMapLayer
@export var snowLayer: TileMapLayer
@export var tileHover: Sprite2D
var progressBar: ProgressBar
var points: Label

# snap the tile hover to each cell to show 
# user which tile will be removed
func _process(float) -> void:
	var cell_coords = map_to_local(local_to_map(get_global_mouse_position()))
	points = find_parent("TileMapTest").find_child("Label")
	tileHover.position = cell_coords
	points.text = "Points: " + str(GLOBALS.points)


#capture mouse press
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("mouse_click"):
		var cell_coords = local_to_map(get_global_mouse_position())
		
		## check if there is an ice block on this coord
		tiledata = iceLayer.get_cell_tile_data(cell_coords)
		
		if tiledata:
			set_cell(cell_coords, iceLayer.get_cell_source_id(cell_coords), Vector2i(-1, -1), -1)
			_tick_progress()
			get_viewport().set_input_as_handled()
		
		# else, check if there is a snow block on this coord
		tiledata = snowLayer.get_cell_tile_data(cell_coords)
		if tiledata:
			set_cell(cell_coords, snowLayer.get_cell_source_id(cell_coords), Vector2i(-1, -1), -1)
			_tick_progress()

# connect to progress bar, tick on each press
func _tick_progress() -> void:
	progressBar = find_parent("TileMapTest").find_child("ProgressBar")
	print(progressBar.value)
	if progressBar:
		progressBar.value += 1
