extends Node2D

@onready var path_follow_2d: PathFollow2D = $Path2D/PathFollow2D
#Will be in Pixels per second
@export var speed = 800

func _process(delta):
	path_follow_2d.progress += speed * delta
	
	
