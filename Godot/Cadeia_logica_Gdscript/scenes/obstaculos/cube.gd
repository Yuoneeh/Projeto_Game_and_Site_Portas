extends StaticBody2D

var moveable : bool
var moveable_up : bool
var moveable_down : bool
var moveable_right : bool
var moveable_left : bool

var player_near : bool
var dir
var animation_speed = 3
var tile_size = 64

@onready var sfx_timer = $sfx_timer
@onready var sfx = %AudioStreamPlayer2D
@onready var anim = %AnimationPlayer
@onready var movement_timer = %movement_timer

@onready var push_arrow_down = %RayCast2D_down_p
@onready var push_arrow_up = %RayCast2D_up_p
@onready var push_arrow_left = %RayCast2D_left_p
@onready var push_arrow_right = %RayCast2D_right_p

@onready var collision_arrow_down = %RayCast2D_down
@onready var collision_arrow_up = %RayCast2D_up
@onready var collission_arrow_left = %RayCast2D_left
@onready var collission_arrow_right = %RayCast2D_right


func _ready() -> void:
	#position = position.snapped(Vector2.ONE * tile_size)
	#position += Vector2.ONE * tile_size/2
	moveable = true
	moveable_down = true
	moveable_right = true
	moveable_left = true
	moveable_up = true

func _process(_delta):
	cube_movement()
	should_i_move()

func cube_movement():
	if push_arrow_left.is_colliding() && moveable == true && moveable_right == true:
		print("Cube:move_right")
		dir = Vector2.RIGHT
		move_right()
		moveable = false
		movement_timer.start()
		sfx_timer.start()
	if push_arrow_right.is_colliding() && moveable == true && moveable_left == true:
		print("Cube:move_left")
		dir = Vector2.LEFT
		move_left()
		moveable = false
		movement_timer.start()
		sfx_timer.start()
	if push_arrow_down.is_colliding() && moveable == true && moveable_up == true:
		print("Cube:move_up")
		dir = Vector2.UP
		move_up()
		moveable = false
		movement_timer.start()
		sfx_timer.start()
	if push_arrow_up.is_colliding() && moveable == true && moveable_down == true:
		print("Cube:move_down")
		dir = Vector2.DOWN
		move_down()
		moveable = false
		movement_timer.start()
		sfx_timer.start()
	#Shake_animation
	if push_arrow_left.is_colliding() && moveable == true && moveable_right == false:
		anim.play("shake")
		
	if push_arrow_right.is_colliding() && moveable == true && moveable_left == false:
		anim.play("shake")
	
	if push_arrow_down.is_colliding() && moveable == true && moveable_up == false:
		anim.play("shake")
		
	if push_arrow_up.is_colliding() && moveable == true && moveable_down == false:
		anim.play("shake")
		

func move_left():
	#sfx.play()
	var tween = create_tween()
	tween.tween_property(self, "position",
	position + dir * tile_size, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)
	#var tween = create_tween()
	#tween.tween_property(self, "position",
	#position + dir * tile_size, 0.75/animation_speed).set_trans(Tween.TRANS_SINE)
	#position.x -= 64  


func move_right():
	#sfx.play()
	var tween = create_tween()
	tween.tween_property(self, "position",
	position + dir * tile_size, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)


func move_up():
	#sfx.play()
	var tween = create_tween()
	tween.tween_property(self, "position",
	position + dir * tile_size, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)


func move_down():
	#sfx.play()
	var tween = create_tween()
	tween.tween_property(self, "position",
	position + dir * tile_size, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)


func should_i_move():
	if collision_arrow_down.is_colliding():
		moveable_down = false
		moveable = true
		#print("moveable_down =", moveable_down)
	if collision_arrow_up.is_colliding():
		moveable_up = false
		moveable = true
		#print("moveable_up =", moveable_up)
	if collission_arrow_left.is_colliding():
		moveable_left = false
		moveable = true
		#print("moveable_left =", moveable_left)
	if collission_arrow_right.is_colliding():
		moveable_right = false
		moveable = true
		#print("moveable_right =", moveable_right)


func should_i_move_no():
	print("Player saiu")
	#player_near = false
	#$deteccao_jogador.monitoring = true


func _on_movement_timer_timeout() -> void:
	moveable = true
	moveable_down = true
	moveable_right = true
	moveable_left = true
	moveable_up = true


func _on_sfx_timer_timeout() -> void:
	sfx.play()
