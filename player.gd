extends RigidBody2D

var movespeed

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	movespeed = get_viewport().get_mouse_pos().distance_to(get_pos())*10
	if (movespeed > 1000): movespeed = 1000
	set_linear_velocity((get_viewport().get_mouse_pos()-get_pos()).normalized()*movespeed)