extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_cast_r = $RayCast_R
@onready var ray_cast_l = $RayCast_L
@onready var animated_sprite = $AnimatedSprite2D

# Called continuously per loop.'delta' is the elapsed time since the previous frame. 
# Standardly 60fps.
func _process(delta):
	if ray_cast_r.is_colliding():
		direction = -1
	if ray_cast_l.is_colliding():
		direction = 1
	
	position.x += direction * SPEED * delta 
