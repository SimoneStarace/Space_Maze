class_name LevelButton extends Button

## Button for loading levels

## Scene to load
@export var level: PackedScene

func _ready():
	self.pressed.connect(_load_level)

## Loads a specific scene
func _load_level():
	if level:
		get_tree().change_scene_to_packed(level)
