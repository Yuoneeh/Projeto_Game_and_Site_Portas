extends StaticBody2D


func _on_player_test_move_right() -> void:
	self.global_position.x += 64 


func _on_player_test_move_down() -> void:
	self.global_position.y += 64


func _on_player_test_move_left() -> void:
	self.global_position.x -= 64 


func _on_player_test_move_up() -> void:
	self.global_position.y -= 64 
