extends CSGPolygon3D

var shesaidno = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	var buttonNode = get_node('../Button')
	buttonNode.pressed.connect(turnMF)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	if Input.is_action_just_pressed("Spin"):
		spin_sides *=2
	if spin_sides > 36:
		spin_sides =3


func turnMF():
	rotate_x(0.1)
