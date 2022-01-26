extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_parent().get_node("PlayerNode/Player").connect("scored", self, "_on_scored")
	pass # Replace with function body.

func _on_scored(value):
	$Label2.text = str(value)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
