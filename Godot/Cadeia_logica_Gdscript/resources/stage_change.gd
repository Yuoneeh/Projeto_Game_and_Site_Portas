extends Node2D
@onready var left_gate = $StaticBody2D/left_gate
@onready var right_gate = $StaticBody2D/right_gate


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.stage_cleared = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.stage_cleared == true:
		right_gate.disabled = true
		left_gate.disabled = true
