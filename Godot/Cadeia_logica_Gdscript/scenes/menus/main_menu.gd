extends Node2D
signal timeout_sfx
@onready var anim = $animations
@onready var btn_play = $Control/btn_play
@onready var btn_options = $Control/btn_options
@onready var btn_quit = $Control/btn_quit
@onready var btn_credits = $Control/btn_credits
@onready var btn_levels = $Control/btn_levels
@onready var audio_timer = $timer_sfx
@onready var song = $song

func _process(delta: float) -> void:
	anim.play("logo")
	button_hover()
func ready():
	anim.play("logo")
	MusicPlayer1.play_song_1()
func button_hover():
	if btn_credits.is_hovered():
		btn_credits.scale = Vector2(1.1,1.1)
	else:
		btn_credits.scale = Vector2(1,1)
		
	if btn_quit.is_hovered():
		btn_quit.scale = Vector2(1.1,1.1)
	else:
		btn_quit.scale = Vector2(1,1)
		
	if btn_options.is_hovered():
		btn_options.scale = Vector2(1.1,1.1)
	else:
		btn_options.scale = Vector2(1,1)
		
	if btn_levels.is_hovered():
		btn_levels.scale = Vector2(1.1,1.1)
	else:
		btn_levels.scale = Vector2(1,1)
		
	if btn_play.is_hovered():
		btn_play.scale = Vector2(2.1,2.1)
	else:
		btn_play.scale = Vector2(2,2)


func _on_btn_quit_pressed() -> void:
	$OldPcClick.play()
	audio_timer.start()
	timeout_sfx.connect(get_tree().quit)
	
	#Sfxs.play_sfx()


func _on_timer_sfx_timeout() -> void:
	timeout_sfx.emit()


func _on_btn_play_pressed() -> void:
	$OldPcClick.play()
	audio_timer.start()
	timeout_sfx.connect(start_game)
	audio_timer.stop()
	start_game()

func start_game():
	Global.change_scene(0)


func _on_btn_credits_pressed() -> void:
	$OldPcClick.play()
	audio_timer.start()
	print("repetiu")
	timeout_sfx.connect(open_website)
	print("loop")
	#audio_timer.stop()
	
func open_website():
	OS.shell_open("https://yuoneeh.github.io/Site_Logic_gate/index.html")
	print("loop")
	#timeout_sfx.disconnect()
	
