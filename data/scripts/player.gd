extends CharacterBody2D

@export_range(0,1000) var speed := 60

@export var walking_particle : GPUParticles2D
@export var sprite:Sprite2D


signal speak(words)
signal set_light_energy(energy)

func _ready() -> void:
	walking_particle.emitting = false
	say("[shake] Hello! How are you doing? \nI\n am dandyMaloo!!!!! [/shake]")
	set_light_energy.emit(2)

func _process(_delta: float) -> void:
	get_player_input()
	
	if(velocity.length() > 0):
		walking_particle.emitting = true
		print(velocity.x)
		if(velocity.x < 0.1 and velocity.x != 0):
			sprite.scale.x = -1
		elif(velocity.x > 0.1 and velocity.x != 0):
			sprite.scale.x = 1
	else:
		walking_particle.emitting = false

func _physics_process(_delta: float) -> void:
	move_and_slide()


func get_player_input() -> void:
	var vector := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = vector * speed
	
func say(words: String) -> void:
	print("SIGNAL GET")
	speak.emit(words)
