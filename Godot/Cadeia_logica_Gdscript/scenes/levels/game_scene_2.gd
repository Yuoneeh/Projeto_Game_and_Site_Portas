extends Node2D

func _ready() -> void:
	Global.lvl = 2
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()


func _on_player_test_move_down() -> void:
	pass # Replace with function body.
