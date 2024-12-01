extends CanvasLayer

@onready var v_box_container: VBoxContainer = $VBoxContainer

func _on_start_pressed():
	get_tree().change_scene_to_file("res://SCENES/GAME.tscn")


func _on_options_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().quit()
