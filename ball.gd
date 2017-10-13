extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	add_collision_exception_with(get_parent().get_node("Link1"))
	add_collision_exception_with(get_parent().get_node("Link2"))
	add_collision_exception_with(get_parent().get_node("Link3"))
	
	