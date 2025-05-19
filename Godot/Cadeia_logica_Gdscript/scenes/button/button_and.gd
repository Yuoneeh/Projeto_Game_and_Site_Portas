extends Area2D

@onready var anim = %AnimatedSprite2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	anim.play("non_pressed")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	anim.play("pressed")


func _on_body_exited(body: Node2D) -> void:
	anim.play("non_pressed")


func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	anim.play("pressed")


func _on_area_shape_exited(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	anim.play("non_pressed")
