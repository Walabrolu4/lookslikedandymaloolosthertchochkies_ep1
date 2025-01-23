extends RichTextLabel

@export var custom_text: String
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = custom_text

func say(new_text:String) -> void:
	text = "[center]" + new_text + "[/center]"
