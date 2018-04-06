extends Area2D

func _ready():
	pass

func _on_Area2D_body_entered( body ):
	
	if body.is_in_group("Player"):
		queue_free()
		get_node("../KinematicBody2D").monedas += 1
	pass
