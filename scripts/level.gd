class_name Level extends Node2D

func _on_maze_body_exited(body):
	if body is Player:
		get_tree().reload_current_scene()
