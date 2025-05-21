extends Node2D
@onready var som_fim = $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	som_fim.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	get_tree().quit()
