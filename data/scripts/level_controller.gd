extends Node

@export var tilemap_arr : Array[TileMapLayer]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for tile_map in tilemap_arr:
		tile_map.modulate = Color(0.014,0.016,0.02)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
