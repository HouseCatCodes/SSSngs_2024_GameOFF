extends CanvasLayer


func _on_retry_pressed():
	get_tree().change_scene_to_file("res://SCENES/GAME.tscn")



func _on_quit_pressed():
	get_tree().change_scene_to_file("res://SCENES/MAIN_MENUSCREEN.tscn")
