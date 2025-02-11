extends Control

const SPEED_PER_CHAR = 0.05
const MIN_DURATION = 1
const MAX_DURATION = 5
const CLEAR_DELAY = 4
const WORD_DELAY = 0.3

@export var custom_text: String
@export var text_label: RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text_label.visible_ratio = 0.0

func _on_player_character_speak(words: Variant) -> void:
	print(words)
	text_label.visible_ratio = 0.0
	var tween = create_tween()
	text_label.text = "[center]" + words + "[/center]"
	
	var duration_by_words = words.length() * SPEED_PER_CHAR
	var duration = clamp(duration_by_words,MIN_DURATION,MAX_DURATION)
	tween.tween_property(text_label,"visible_ratio",float(1),duration)
	
	await tween.finished
	await get_tree().create_timer(CLEAR_DELAY).timeout
	
	text_label.text = ""
	text_label.visible_ratio = 0.0
	
	
