extends KinematicBody2D

var movimiento
var velocidad

var monedas

func _ready():
	movimiento = Vector2()
	velocidad = 100
	
	monedas = 0
	
	set_physics_process(true)
	
	pass

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_left"):
		movimiento.x = -velocidad

	elif Input.is_action_pressed("ui_right"):
		movimiento.x = velocidad

	elif Input.is_action_pressed("ui_up"):
		movimiento.y = -velocidad

	elif Input.is_action_pressed("ui_down"):
		movimiento.y = velocidad

	else:
		movimiento.x = 0
		movimiento.y = 0

	move_and_slide(movimiento)
	
	if monedas == 3:
		get_tree().reload_current_scene()
	
	pass

