class_name Level extends Node2D

## Level to load once player reaches the end of the maze
@export var next_level: PackedScene
## Boolean to verify if the player reached the end of the maze
var level_complete = false

func _on_maze_body_exited(body):
	if body is Player and level_complete == false:
		get_tree().reload_current_scene()

func _on_end_body_entered(body):
	if body is Player and next_level != null:
		level_complete = true
		get_tree().change_scene_to_packed(next_level)
