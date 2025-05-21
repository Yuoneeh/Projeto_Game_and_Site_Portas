extends Node2D
@onready var som_fim = $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("dev")
	som_fim.play()
	$parabains_1.play()
	$parabains_2.play()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	get_tree().quit()


func _on_texture_button_pressed() -> void:
	OS.shell_open("https://yuoneeh.itch.io")
