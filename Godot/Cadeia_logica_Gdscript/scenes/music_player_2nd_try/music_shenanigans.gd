extends Node2D
@onready var song_1 = $Music_player
@onready var song_2 = $musica_2
@onready var song_3 = $musica_3


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	song_2.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
