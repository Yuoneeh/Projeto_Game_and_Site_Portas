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
