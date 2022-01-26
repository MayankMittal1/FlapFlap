extends TextureRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false
	get_parent().get_parent().get_node("PlayerNode/Player").connect("death", self, "_on_death")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Start.tscn")
	pass # Replace with function body.


func _on_TextureButton2_pressed():
	get_tree().reload_current_scene()
	pass # Replace with function body.

func _on_death(value):
	self.visible = true
	$Label.text = str(value)
