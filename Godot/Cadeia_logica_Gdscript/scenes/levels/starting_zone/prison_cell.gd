extends StaticBody2D

@onready var anim = $cell/AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var collision_shape_2d_area: CollisionShape2D = $cell/CollisionShape2D
@onready var cell_breakable: StaticBody2D = $"."
@onready var sfx = $AudioStreamPlayer2D

func ready():
	anim.play("closed")
	cell_breakable.process_mode = Node.PROCESS_MODE_INHERIT
	collision_shape_2d.disabled = false
	collision_shape_2d_area.disabled = false


func _on_cell_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	sfx.play()
	anim.play("broken")
	cell_breakable.process_mode = Node.PROCESS_MODE_DISABLED
	collision_shape_2d.disabled = true
	collision_shape_2d_area.disabled = true
