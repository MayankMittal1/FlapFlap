extends ParallaxBackground

export var speed = 400

func _process(delta):
	scroll_offset.x -= speed * delta

func _on_TextureButton_pressed():
	get_tree().change_scene("res://World.tscn")
	pass # Replace with function body.
