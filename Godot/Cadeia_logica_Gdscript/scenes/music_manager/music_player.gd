extends Node2D

@onready var musica_1: AudioStreamPlayer = $musica_1
@onready var musica_2: AudioStreamPlayer = $musica_2
@onready var musica_3: AudioStreamPlayer = $musica_3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func play_song_1():
	musica_1.play()


func play_song_2():
	musica_2.play()
