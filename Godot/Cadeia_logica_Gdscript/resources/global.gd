extends Node

var starting_level = preload("res://scenes/levels/starting_zone/starting_zone.tscn")
var level1 = preload("res://scenes/levels/level_1.tscn")
var level2 = preload("res://scenes/levels/level_2.tscn")
var level3 = preload("res://scenes/levels/level_3.tscn")
var level4 = preload("res://scenes/levels/level_4.tscn")
var level5 = preload("res://scenes/levels/level_5.tscn")
var level6 = preload("res://scenes/levels/level_6.tscn")
var level7 = preload("res://scenes/levels/level_7.tscn")
var level8 = preload("res://scenes/levels/level_8.tscn")
var level9 = preload("res://scenes/levels/level_9.tscn")
var level10 = preload("res://scenes/levels/level_10.tscn")
var level11 = preload("res://scenes/levels/level_11.tscn")
var level12 = preload("res://scenes/levels/level_12.tscn")
var level13 = preload("res://scenes/levels/level_13.tscn")
var level14 = preload("res://scenes/levels/level_14.tscn")
var level15 = preload("res://scenes/levels/level_15.tscn")
var level16 = preload("res://scenes/fim/end.tscn")
var stage_cleared = false
var scene_counter : int
var lvl : int
func sayHi():
	print("Hiiiiiii")

func change_scene(lvl):
	
	match lvl:
		0:
			MusicPlayer3.stop_song_3()
			MusicPlayer2.stop_song_2()
			MusicPlayer1.play_song_1()
			SceneTransition.change_scene(lvl)
		1:
			SceneTransition.change_scene(lvl)
		2:
			SceneTransition.change_scene(lvl)
		3:
			SceneTransition.change_scene(lvl)
		4:
			
			SceneTransition.change_scene(lvl)
		5:
			SceneTransition.change_scene(lvl)
		6:	
			MusicPlayer3.play_song_3()
			MusicPlayer2.stop_song_2()
			MusicPlayer1.stop_song_1()
			SceneTransition.change_scene(lvl)
		7:
			SceneTransition.change_scene(lvl)
		8:
			MusicPlayer3.stop_song_3()
			MusicPlayer2.play_song_2()
			MusicPlayer1.stop_song_1()
			SceneTransition.change_scene(lvl)
		9:
			SceneTransition.change_scene(lvl)
		10:
			SceneTransition.change_scene(lvl)
		11:
			MusicPlayer3.stop_song_3()
			MusicPlayer2.stop_song_2()
			MusicPlayer1.play_song_1()
			SceneTransition.change_scene(lvl)
		12:
			SceneTransition.change_scene(lvl)
		13:
			SceneTransition.change_scene(lvl)
		14:
			SceneTransition.change_scene(lvl)
		15:
			MusicPlayer3.play_song_3()
			MusicPlayer2.play_song_2()
			MusicPlayer1.stop_song_1()
			SceneTransition.change_scene(lvl)
		16:
			SceneTransition.change_scene(lvl)
			
func clear_stage():
	stage_cleared = true
	
func start_stage():
	stage_cleared = false
