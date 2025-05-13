extends Node

var level1 = preload("res://scenes/levels/level_1.tscn")
var level2 = preload("res://scenes/levels/level_2.tscn")
var level3 = preload("res://scenes/levels/level_3.tscn")
var stage_cleared = false
var scene_counter : int
var lvl : int
func sayHi():
	print("Hiiiiiii")

func change_scene(lvl):
	match lvl:
		1:
			get_tree().change_scene_to_packed(level1)
		2:
			get_tree().change_scene_to_packed(level2)
		3:
			get_tree().change_scene_to_packed(level3)
func clear_stage():
	stage_cleared = true
	
func start_stage():
	stage_cleared = false
