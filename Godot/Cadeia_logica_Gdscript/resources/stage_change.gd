extends Node2D
@onready var left_gate = $StaticBody2D/left_gate
@onready var right_gate = $StaticBody2D/right_gate
var next_scene = Global.lvl + 1
var last_scene = Global.lvl - 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.stage_cleared = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.stage_cleared == true:
		right_gate.disabled = true
		left_gate.disabled = true


func _on_stage_clear_left_body_entered(body: Node2D) -> void:
	last_scene = Global.lvl - 1
	Global.change_scene(last_scene)


func _on_stage_clear_right_body_entered(body: Node2D) -> void:
	next_scene = Global.lvl + 1
	Global.change_scene(next_scene)
