extends KinematicBody2D
var GRAVITY
const UP = Vector2(0,-1)
var FLAP
const MAXFALLSPEED = 200
var motion = Vector2()
var score
var WallNode = preload("res://WallNode.tscn")

func _ready():
	GRAVITY = 10
	FLAP = 200
	score = 0
	
func _physics_process(delta):
	if self.position.y > 160 or self.position.y < -160:
		pass
		#lmao_ded()
	motion.y += GRAVITY
	if motion.y > MAXFALLSPEED:
		motion.y = MAXFALLSPEED
	if Input.is_action_just_pressed("FLAP"):
		motion.y = -FLAP
	motion = move_and_slide(motion,UP)

func wall_reset():
	var wall = WallNode.instance()
	wall.position = Vector2(500,rand_range(-60,60))
	get_parent().call_deferred("add_child",wall)

func _on_Resetter_body_entered(body):
	if body.name == 'Wall':
		body.queue_free()
		wall_reset()


func _on_Detector_body_entered(body):
	if body.name=="Wall":
		#gameover
		pass


func _on_Detector_area_entered(area):
	#increament score
	pass # Replace with function body.
