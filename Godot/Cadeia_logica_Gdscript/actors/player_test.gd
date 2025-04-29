extends CharacterBody2D
@onready var ray = $collision_detector
@onready var tile_interactions = $"../interaction_grid"
@onready var tile_boxes = $"../interactables"
var animation_speed = 3
var tile_size = 64
var dir
var moving = false
func _ready() -> void:
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2
func _process(delta: float) -> void:
	#tile_data_stuff()
	if moving == false:
		if Input.is_action_just_pressed("walk_left"):
			dir = Vector2.LEFT
			print("Left")
			move(dir)
		if Input.is_action_just_pressed("walk_right"):
			dir = Vector2.RIGHT
			print("Right")
			move(dir)
		if Input.is_action_just_pressed("walk_up"):
			dir = Vector2.UP
			print("Up")
			move(dir)
		if Input.is_action_just_pressed("walk_down"):
			dir = Vector2.DOWN
			print("Down")
			move(dir)
		push_stuff()
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
		position + dir * tile_size, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)
		moving = true
		await tween.finished
		moving = false
	
func push_stuff():
	#if tile_boxes.get_cell_atlas_coords():
		#print("Boa maluco")
	pass
