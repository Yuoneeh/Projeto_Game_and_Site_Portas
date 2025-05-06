extends StaticBody2D

var player_near : bool


func _ready() -> void:
	#$"player_detection".area_entered.connect(should_i_move_yes)
	#$"player_detection".area_exited.connect(should_i_move_no)
	var player_node = get_tree().get_nodes_in_group("player")
	if player_node.size() > 0:
		var player = player_node[0] as CharacterBody2D
		player.move_left.connect(move_left)
		player.move_right.connect(move_right)
		player.move_up.connect(move_up)
		player.move_down.connect(move_down)


func _process(delta):
	var player_node = get_tree().get_nodes_in_group("player")
	if player_node.size() > 0:
		var player = player_node[0] as CharacterBody2D


func move_left():
	position.x -= 64  


func move_right():
	position.x += 64  


func move_up():
	position.y -= 64  
	
	
	
func move_down():
	position.y += 64 

	
	
func should_i_move_yes():
	print("Player entrou")
	#player_near = true
	#$deteccao_jogador.monitoring = false


func should_i_move_no():
	print("Player saiu")
	#player_near = false
	#$deteccao_jogador.monitoring = true
