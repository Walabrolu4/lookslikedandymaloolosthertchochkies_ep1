extends Node

@export var tilemap_arr : Array[TileMapLayer]

func _ready() -> void:
	for tile_map in tilemap_arr:
		#tile_map.modulate = Color(0.014,0.016,0.02)
		tile_map.modulate = Color(0.02,0.022,0.08)
