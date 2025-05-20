extends Node

var starting_level = preload("res://scenes/levels/starting_zone/starting_zone.tscn")
var level1 = preload("res://scenes/levels/level_1.tscn")
var level2 = preload("res://scenes/levels/level_2.tscn")
var level3 = preload("res://scenes/levels/level_3.tscn")
var level4 = preload("res://scenes/levels/level_4.tscn")
var level5 = preload("res://scenes/levels/level_5.tscn")
var level6 = preload("res://scenes/levels/level_1.tscn")
var level7 = preload("res://scenes/levels/level_2.tscn")
var level8 = preload("res://scenes/levels/level_3.tscn")
var level9 = preload("res://scenes/levels/level_4.tscn")
var level10 = preload("res://scenes/levels/level_5.tscn")
var level11 = preload("res://scenes/levels/level_5.tscn")
var level12 = preload("res://scenes/levels/level_1.tscn")
var level13 = preload("res://scenes/levels/level_2.tscn")
var level14 = preload("res://scenes/levels/level_3.tscn")
var level15 = preload("res://scenes/levels/level_4.tscn")
var level16 = preload("res://scenes/levels/level_5.tscn")
var stage_cleared = false
var scene_counter : int
var lvl : int
func sayHi():
	print("Hiiiiiii")

func change_scene(lvl):
	
	match lvl:
		0:
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
			SceneTransition.change_scene(lvl)
		7:
			SceneTransition.change_scene(lvl)
		8:
			SceneTransition.change_scene(lvl)
		9:
			SceneTransition.change_scene(lvl)
		10:
			SceneTransition.change_scene(lvl)
		11:
			SceneTransition.change_scene(lvl)
		12:
			SceneTransition.change_scene(lvl)
		13:
			SceneTransition.change_scene(lvl)
		14:
			SceneTransition.change_scene(lvl)
		15:
			SceneTransition.change_scene(lvl)
		16:
			SceneTransition.change_scene(lvl)
			
func clear_stage():
	stage_cleared = true
	
func start_stage():
	stage_cleared = false
