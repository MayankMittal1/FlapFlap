extends Node2D

func _ready():
	GameState.load_game()
	$"AudioStreamPlayer".play()
	if (!GameState.music):
		$"AudioStreamPlayer".stream_paused = !$"AudioStreamPlayer".stream_paused
		GameState.music = !$"AudioStreamPlayer".stream_paused
		$"TextureButton".texture_normal = load("res://assets/Extras/muted.png")
		$"TextureButton".texture_pressed = load("res://assets/Extras/unmuted.png")

func _on_TextureButton_toggled(button_pressed):
	$"AudioStreamPlayer".stream_paused = !$"AudioStreamPlayer".stream_paused
	GameState.music = !$"AudioStreamPlayer".stream_paused
	GameState.save_game()
	pass # Replace with function body.
