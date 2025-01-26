extends Camera3D

var length = 50
var startPos : Vector2
var curPos : Vector2
var swiping = false
var Hand : Node3D
var threshold = 10
@onready var sfx = $"../AudioStreamPlayer3D"
var played = false

func _ready():
	Hand = get_tree().get_root().get_node("Node3D/Hand")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("wheel_up") && Hand.transform.origin.y < 2:
		Hand.transform.origin = Vector3(Hand.transform.origin.x, Hand.transform.origin.y + delta, Hand.transform.origin.z)
	if Input.is_action_pressed("wheel_down") && Hand.transform.origin.y > 0.6:
		Hand.transform.origin = Vector3(Hand.transform.origin.x, Hand.transform.origin.y - delta, Hand.transform.origin.z)
	
	if Hand.transform.origin.y < 0.8 && !played && Hand.transform.origin.y > 0.7:
		sfx.play()
		played = true
	elif Hand.transform.origin.y > 0.9 && played :
		played = false
		
		
	
	pass
