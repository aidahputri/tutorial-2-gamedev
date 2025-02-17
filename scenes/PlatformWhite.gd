extends Node2D

#@export var speed = 500.0
const PLATFORM_SPEED = 300 

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Platform Level 2 initialized")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction_x = 0
	var direction_y = 0

	if Input.is_action_pressed("move_left"):
		direction_x = -1
	elif Input.is_action_pressed("move_right"):
		direction_x = 1

	if Input.is_action_pressed("move_up"):
		direction_y = -1
	elif Input.is_action_pressed("move_down"):
		direction_y = 1

	position.x += direction_x * PLATFORM_SPEED * delta
	position.y += direction_y * PLATFORM_SPEED * delta
