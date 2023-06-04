class_name Player extends RigidBody2D

## The amount of force for moving the player
@export var movement_force = 200

func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		apply_force(Vector2(movement_force, 0))
	if Input.is_action_pressed("move_left"):
		apply_force(Vector2(-movement_force, 0))
	if Input.is_action_pressed("move_down"):
		apply_force(Vector2(0, movement_force))
	if Input.is_action_pressed("move_up"):
		apply_force(Vector2(0, -movement_force))
