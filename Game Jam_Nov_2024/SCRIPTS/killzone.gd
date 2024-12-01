extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("HIT!")
	timer.start()

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://SCENES/GAMEOVER_Screen.tscn")
