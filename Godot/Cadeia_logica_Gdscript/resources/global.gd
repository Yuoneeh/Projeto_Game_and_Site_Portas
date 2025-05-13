extends Node

var level1 = preload("res://scenes/levels/level_1.tscn")
var level2 = preload("res://scenes/levels/level_2.tscn")
var stage_cleared = false
# Called when the node enters the scene tree for the first time.
func sayHi():
	print("Hiiiiiii")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func change_scene(lvl):
	match lvl:
		1:
			get_tree().change_scene_to_packed(level1)
		2:
			get_tree().change_scene_to_packed(level2)

func clear_stage():
	stage_cleared = true
	
func start_stage():
	stage_cleared = false
