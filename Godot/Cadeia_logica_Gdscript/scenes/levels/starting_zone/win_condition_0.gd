extends Node
var btn1_pressed : bool
var btn2_pressed : bool
var btn3_pressed : bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	win_condition()


func _on_button_pressed() -> void:
	btn1_pressed = true
	print("btn1_pressed")


func _on_button_unpressed() -> void:
	btn1_pressed = false
	print("btn1_pressed")


func win_condition():
	if btn1_pressed == true:
		Global.stage_cleared = true
	elif btn1_pressed == false:
		Global.stage_cleared = false
