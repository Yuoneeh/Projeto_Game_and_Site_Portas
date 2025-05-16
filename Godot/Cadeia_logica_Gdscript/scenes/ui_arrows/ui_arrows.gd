extends Node2D
@onready var left_arrow = %left_arrow
@onready var right_arrow = %right_arrow
@onready var up_arrow = %up_arrow
@onready var down_arrow = %down_arrow

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	left_arrow.play("off")
	right_arrow.play("off")
	up_arrow.play("off")
	down_arrow.play("off")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_player_move_down_arrow() -> void:
	left_arrow.play("off")
	right_arrow.play("off")
	up_arrow.play("off")
	down_arrow.play("on")


func _on_player_move_left_arrow() -> void:
	left_arrow.play("on")
	right_arrow.play("off")
	up_arrow.play("off")
	down_arrow.play("off")


func _on_player_move_right_arrow() -> void:
	left_arrow.play("off")
	right_arrow.play("on")
	up_arrow.play("off")
	down_arrow.play("off")


func _on_player_move_up_arrow() -> void:
	left_arrow.play("off")
	right_arrow.play("off")
	up_arrow.play("on")
	down_arrow.play("off")


func _on_player_arrow_hide() -> void:
	left_arrow.visible = false
	right_arrow.visible = false
	up_arrow.visible = false
	down_arrow.visible = false


func _on_player_arrow_show() -> void:
	left_arrow.visible = true
	right_arrow.visible = true
	up_arrow.visible = true
	down_arrow.visible = true
