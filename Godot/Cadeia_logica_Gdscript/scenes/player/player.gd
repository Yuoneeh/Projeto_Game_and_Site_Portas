extends CharacterBody2D
#Gilica
signal move_right
signal move_down
signal move_up
signal move_left
signal move_right_arrow
signal move_down_arrow
signal move_up_arrow
signal move_left_arrow
signal arrow_hide
signal arrow_show


@onready var attack_timer = $attack_timer
@onready var hand_pusher_area = %CollisionShape2D
@onready var hand_pusher_guide = %hand_pusher_guide
@onready var anim = %player_sprite
@onready var ray = $collision_detector
@onready var tile_interactions = $"../interaction_grid"
@onready var tile_boxes = $"../interactables"
@onready var ray_interactables = $interactables_ray
@onready var flick_hand = %hand_flick

var animation_speed = 3
var tile_size = 64
var dir
var socavel = false
var moving = false

func _ready() -> void:
	anim.play("idle")
	hand_pusher_area.disabled = true
	flick_hand.visible = false
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2
func _process(delta: float) -> void:
	ray_interactables.force_raycast_update()
	#tile_data_stuff()
	inputs()
			
	if moving == false && socavel == true:
		#Push Right
		if Input.is_action_pressed("action_02") && dir == Vector2.RIGHT:
			flick_hand.flip_h = true
			flick_hand.flip_v = false
			flick_hand.position.x = 55.0
			flick_hand.position.y = 1
			flick_hand.rotation = 0
			flick_hand.visible = true
			
			dir = Vector2.RIGHT
			ray_interactables.force_raycast_update()
		if Input.is_action_just_released("action_02") && dir == Vector2.RIGHT:
			attack_timer.start()
			hand_pusher_area.disabled = false
			flick_hand.visible = false
			dir = Vector2.RIGHT
			ray_interactables.force_raycast_update()
			socavel = false
		#Push Down
		if Input.is_action_pressed("action_02") && dir == Vector2.DOWN:
			print("Quero empurrar este objeto")
			flick_hand.position.x = 6.0
			flick_hand.position.y = 43
			flick_hand.rotation = 90
			flick_hand.visible = true
			flick_hand.flip_h = true
			flick_hand.flip_v = false
			dir = Vector2.DOWN
			ray_interactables.force_raycast_update()
		if Input.is_action_just_released("action_02") && dir == Vector2.DOWN:
			attack_timer.start()
			hand_pusher_area.disabled = false
			flick_hand.visible = false
			dir = Vector2.DOWN
			ray_interactables.force_raycast_update()
			socavel = false
		##Push UP
		if Input.is_action_pressed("action_02") && dir == Vector2.UP:
			print("Quero empurrar este objeto")
			flick_hand.position.x = 11.0
			flick_hand.position.y = -31.0
			flick_hand.rotation = 200
			flick_hand.visible = true
			flick_hand.flip_h = true
			flick_hand.flip_v = false
			dir = Vector2.UP
			ray_interactables.force_raycast_update()
			
		if Input.is_action_just_released("action_02") && dir == Vector2.UP:
			attack_timer.start()
			hand_pusher_area.disabled = false
			flick_hand.visible = false
			dir = Vector2.UP
			ray_interactables.force_raycast_update()
			socavel = false
		##Push LEFT
		if Input.is_action_pressed("action_02") && dir == Vector2.LEFT:
			print("Quero empurrar este objeto")
			flick_hand.position.x = -44.0
			flick_hand.position.y = 4.0
			flick_hand.rotation = 245
			flick_hand.visible = true
			flick_hand.flip_h = false
			flick_hand.flip_v = false
			dir = Vector2.LEFT
			ray_interactables.force_raycast_update()
		if Input.is_action_just_released("action_02") && dir == Vector2.LEFT:
			attack_timer.start()
			hand_pusher_area.disabled = false
			flick_hand.visible = false
			dir = Vector2.LEFT
			ray_interactables.force_raycast_update()
			socavel = false


#func tile_data_stuff():
#	var tile_ tile_interactions.get_cell_tile_data(tile_type):
	
	#if ray.is_colliding:
		#print("Tile 3 Encontrado")
func move(dir):
	ray.target_position = dir * tile_size
	ray.force_raycast_update()
	if !ray.is_colliding():
		#position += dir * tile_size
		var tween = create_tween()
		tween.tween_property(self, "position",
		position + dir * tile_size, 0.75/animation_speed).set_trans(Tween.TRANS_SINE)
		moving = true
		emit_signal("arrow_hide")
		await tween.finished
		emit_signal("arrow_show")
		#position = position.snapped(Vector2.ONE * tile_size)
		moving = false
	if ray_interactables.is_colliding():
		print("Há objetos interagiveis")
		socavel = true
	if !ray_interactables.is_colliding():
		print("Não há objetos interagiveis")
		socavel = false
	if ray.is_colliding():
		if ray_interactables.is_colliding():
			print("Há objetos interagiveis")
			socavel = true
		if !ray_interactables.is_colliding():
			print("Não há objetos interagiveis")
			socavel = false
	
func push_stuff():
	ray_interactables.target_position = dir * tile_size
	ray_interactables.force_raycast_update()
	hand_pusher_guide.position = dir * 32
	
	#if ray_interactables.is_colliding():
	#	print("Há objetos interagiveis")
		#socavel = true
	#if !ray_interactables.is_colliding():
		#print("Não há objetos interagiveis")
	#	socavel = false

func inputs():
	if moving == !false:
		return
	if Input.is_action_just_pressed("walk_left"):
		emit_signal("move_left_arrow")
		moving = true
		var tween = create_tween()
		tween.tween_property(anim, "rotation",
		rotation - 0.25, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)
		dir = Vector2.LEFT
		push_stuff()
		print("Left")
		move(dir)
		tween.tween_property(anim, "rotation",
		rotation , 0.75/animation_speed).set_trans(Tween.TRANS_SINE)
		await tween.finished
		moving = false
		rotation = 0
	if Input.is_action_just_pressed("walk_right"):
		emit_signal("move_right_arrow")
		moving = true
		var tween = create_tween()
		tween.tween_property(anim, "rotation",
		rotation + 0.25, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)
		dir = Vector2.RIGHT
		push_stuff()
		print("Right")
		move(dir)
		tween.tween_property(anim, "rotation",
		rotation , 0.75/animation_speed).set_trans(Tween.TRANS_SINE)
		await tween.finished
		moving = false
		rotation = 0
		Global.stage_cleared = true
		
	if Input.is_action_just_pressed("walk_up"):
		emit_signal("move_up_arrow")
		dir = Vector2.UP
		push_stuff()
		print("Up")
		move(dir)
	if Input.is_action_just_pressed("walk_down"):
		emit_signal("move_down_arrow")
		dir = Vector2.DOWN
		push_stuff()
		print("Down")
		move(dir)


func _on_attack_timer_timeout() -> void:
	hand_pusher_area.disabled = true
