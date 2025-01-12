extends Camera2D

@export var target: Node2D

func _process(delta):
	if target:
		position = lerp(position, target.global_position, 5 * delta)  # Smooth follow
