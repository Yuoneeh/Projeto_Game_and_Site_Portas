extends Node2D

@onready var musica_1 = preload("res://assets/music/Lucas-Moraes-msc2-2025-05-19-20_34.ogg")
@onready var musica_2 = preload("res://assets/music/Lucas-Moraes-msc3-2025-05-19-20_35.ogg")
@onready var musica_3 = preload("res://assets/music/Lucas-Moraes-msc4-2025-05-19-20_35.ogg")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	musica_1.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#stage_songs()
	pass
	
func play_song_1(music: AudioStream, volume = 0.0):
	pass
	

func play_song_2():
	if musica_2.is_playing() == true:
		return
	musica_2.play()
	


func play_song_3():
	if musica_3.is_playing() == true:
		return
	musica_3.play()
	
func stop_all_music():
	musica_3.stop()
	musica_2.stop()
	musica_1.stop()

func stage_songs():
	pass
