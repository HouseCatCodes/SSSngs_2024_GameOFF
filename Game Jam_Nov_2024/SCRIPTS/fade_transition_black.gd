extends CanvasLayer

signal on_transition_finished

@onready var color_rect: ColorRect = $ColorRect
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready():
	color_rect.visible = false
	animation_player.animation_finished.is_connected(_on_animation_player_animation_finished)
	
func _on_animation_player_animation_finished(anim_name: StringName) -> void:
		if "Fade_to_Black":
			on_transition_finished.emit()
			animation_player.play("Fade_to_Normal")
		elif "Fade_to_Normal":
			color_rect.visible = false
		
func transition():
	color_rect.visible = true
	animation_player.play("Fade_to_Black")
	
