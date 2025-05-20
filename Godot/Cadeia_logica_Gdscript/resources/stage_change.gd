extends Node2D
@onready var left_gate = $StaticBody2D/left_gate
@onready var right_gate = $StaticBody2D/right_gate
var next_scene = Global.lvl + 1
var last_scene = Global.lvl - 1
@onready var anim_door_left =  %door_sprite_left
@onready var anim_door_right = %door_sprite_right


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.stage_cleared = false
	anim_door_right.play("closed")
	anim_door_left.play("closed")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.stage_cleared == true:
		right_gate.disabled = true
		left_gate.disabled = true
		anim_door_right.play("opened")
		anim_door_left.play("open")
	elif Global.stage_cleared == false:
		right_gate.disabled = false
		left_gate.disabled = false
		anim_door_right.play("closed")
		anim_door_left.play("closed")
func _on_stage_clear_left_body_entered(body: Node2D) -> void:
	last_scene = Global.lvl - 1
	Global.change_scene(last_scene)


func _on_stage_clear_right_body_entered(body: Node2D) -> void:
	next_scene = Global.lvl + 1
	Global.change_scene(next_scene)

	
	
