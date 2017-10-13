extends Node2D

var bounces = 0
var top = 0

func _on_Ball_body_enter( body ):
	if (body == get_node("Mace")): bounces += 1
	if(bounces > top): top = bounces
	if(body == get_node("Bottom")): bounces = 0;
	get_node("Label").set_text("Bounces: "+str(bounces)+"/"+str(top))