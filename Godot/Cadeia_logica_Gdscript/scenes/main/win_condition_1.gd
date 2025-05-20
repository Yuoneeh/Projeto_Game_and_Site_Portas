extends Node
var btn1_pressed : bool
var btn2_pressed : bool
var btn3_pressed : bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	win_condition()


func _on_button_pressed() -> void:
	btn1_pressed = true
	print("btn1_pressed")

func _on_button_unpressed() -> void:
	btn1_pressed = false
	print("btn2_unpressed")

func _on_button_2_pressed() -> void:
	btn2_pressed = true
	print("btn2_pressed")

func _on_button_2_unpressed() -> void:
	btn2_pressed = false
	print("btn2_unpressed")

func win_condition():
	if btn1_pressed == true && btn2_pressed == true:
		Global.stage_cleared = true
	elif btn1_pressed == false && btn2_pressed == true or  btn1_pressed == true && btn2_pressed == false:
		Global.stage_cleared = false
