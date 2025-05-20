extends CanvasLayer


func change_scene(lvl):
	$AnimationPlayer.play("dissolve")
	await $AnimationPlayer.animation_finished
	match lvl:
		0:
			SceneTransition.get_tree().change_scene_to_packed(Global.starting_level)
		1:
			SceneTransition.get_tree().change_scene_to_packed(Global.level1)
		2:
			SceneTransition.get_tree().change_scene_to_packed(Global.level2)
		3:
			SceneTransition.get_tree().change_scene_to_packed(Global.level3)
		4:
			SceneTransition.get_tree().change_scene_to_packed(Global.level4)
		5:
			SceneTransition.get_tree().change_scene_to_packed(Global.level5)
		6:
			SceneTransition.get_tree().change_scene_to_packed(Global.level6)
		7:
			SceneTransition.get_tree().change_scene_to_packed(Global.level7)
		8:
			SceneTransition.get_tree().change_scene_to_packed(Global.level8)
		9:
			SceneTransition.get_tree().change_scene_to_packed(Global.level9)
		10:
			SceneTransition.get_tree().change_scene_to_packed(Global.level10)
		11:
			SceneTransition.get_tree().change_scene_to_packed(Global.level11)
		12:
			SceneTransition.get_tree().change_scene_to_packed(Global.level12)
		13:
			SceneTransition.get_tree().change_scene_to_packed(Global.level13)
		14:
			SceneTransition.get_tree().change_scene_to_packed(Global.level14)
		15:
			SceneTransition.get_tree().change_scene_to_packed(Global.level15)
		16:
			SceneTransition.get_tree().change_scene_to_packed(Global.level16)
	$AnimationPlayer.play_backwards("dissolve")
