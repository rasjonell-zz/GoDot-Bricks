extends Sprite

func _ready():
	set_fixed_process(true)
	set_process_input(true)

func _input(event):
	if event.type == InputEvent.MOUSE_BUTTON && event.is_pressed():
		get_tree().change_scene("res://Scenes/LevelOne.xml")
