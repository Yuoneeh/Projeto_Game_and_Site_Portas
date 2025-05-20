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
			get_tree().change_scene_to_packed(starting_level)
		1:
			get_tree().change_scene_to_packed(level1)
		2:
			get_tree().change_scene_to_packed(level2)
		3:
			get_tree().change_scene_to_packed(level3)
		4:
			get_tree().change_scene_to_packed(level4)
		5:
			get_tree().change_scene_to_packed(level5)
		6:
			get_tree().change_scene_to_packed(level6)
		7:
			get_tree().change_scene_to_packed(level7)
		8:
			get_tree().change_scene_to_packed(level8)
		9:
			get_tree().change_scene_to_packed(level9)
		10:
			get_tree().change_scene_to_packed(level10)
		11:
			get_tree().change_scene_to_packed(level11)
		12:
			get_tree().change_scene_to_packed(level12)
		13:
			get_tree().change_scene_to_packed(level13)
		14:
			get_tree().change_scene_to_packed(level14)
		15:
			get_tree().change_scene_to_packed(level15)
		16:
			get_tree().change_scene_to_packed(level16)
			
func clear_stage():
	stage_cleared = true
	
func start_stage():
	stage_cleared = false
