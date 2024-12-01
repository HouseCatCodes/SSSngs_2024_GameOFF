extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body):
	print("TAGGED")
	timer.start()


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://SCENES/GAMEOVER_Screen_GOOD.tscn")
