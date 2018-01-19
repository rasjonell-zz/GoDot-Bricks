extends Node2D

var score = 0 setget set_score

func set_score(value):
	score = value
	get_node("Score").set_text("Score: " + str(score))

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	if get_tree().get_root().has_node("Ball"):
		get_node("Hint").set_percent_visible(0)
	else:
		get_node("Hint").set_percent_visible(100)
	
	if score < 0:
		get_tree().change_scene("res://Scenes/GameOver.xml")