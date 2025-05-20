extends Camera2D

@onready var player: CharacterBody2D = $"../Player"
var x_reset : int
var y_reset : int
var animation_speed = 3
var zoom_scale = 1
var Zoom_speed = Vector2(1,1)
var MinZoom = Vector2(1, 1)
var MaxZoom = Vector2(1.8,1.8)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	x_reset = self.position.x
	y_reset = self.position.y

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func move_to_player():
	self.global_position.x = player.global_position.x
	self.global_position.y = player.global_position.y


func move_away_from_player():
	self.position.x = x_reset
	self.position.y = y_reset



func zoom_player_in():
	self.zoom = clamp(zoom, MinZoom, MaxZoom) + Zoom_speed
	move_to_player()

func zoom_player_out():
	self.zoom = Vector2(1, 1)
	move_away_from_player()


func _on_player_zoom_in() -> void:
	zoom_player_in()


func _on_player_zoom_out() -> void:
	zoom_player_out()
