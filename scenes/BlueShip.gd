extends RigidBody2D

const SPEED = 360 
const VERTICAL_SPEED = 200 

func _process(delta):
	var direction_x = 0 
	var direction_y = 0
	
	if Input.is_action_pressed("move_left"):
		direction_x = -1
	if Input.is_action_pressed("move_right"):
		direction_x = 1
	if Input.is_action_pressed("move_up"):
		direction_y = -1
	if Input.is_action_pressed("move_down"):
		direction_y = 1

	linear_velocity.x = direction_x * SPEED
	linear_velocity.y = direction_y * VERTICAL_SPEED
