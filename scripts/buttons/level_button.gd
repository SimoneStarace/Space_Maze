class_name LevelButton extends Button

## Button for loading levels

func _ready():
	self.pressed.connect(_reload_game)

## Loads the first level
func _reload_game():
	get_tree().change_scene_to_file("res://scenes/levels/level_1.tscn")
