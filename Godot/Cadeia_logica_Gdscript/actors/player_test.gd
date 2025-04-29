extends CharacterBody2D
@onready var ray = $collision_detector

var tile_size = 64
var dir
func _ready() -> void:
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2

func _process(delta: float) -> void:
	
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

func move(dir):
	ray.target_position = dir * tile_size
	ray.force_raycast_update()
	if !ray.is_colliding():
		position += dir * tile_size
	
	
