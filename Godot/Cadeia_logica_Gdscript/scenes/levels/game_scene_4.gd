extends Node2D

func _ready() -> void:
	Global.lvl = 4
	print("Global Lvl = 4")


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()


func _on_player_test_move_down() -> void:
	pass # Replace with function body.


func _on_button_button_up() -> void:
	get_tree().reload_current_scene()
