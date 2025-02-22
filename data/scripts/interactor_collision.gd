extends Area2D

@export var words:String = " "

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		body.set_say(words)

func _on_body_exited(body: Node2D) -> void:
	if body is Player:
		body.remove_say()
