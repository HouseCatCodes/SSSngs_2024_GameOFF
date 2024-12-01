class_name Player

extends CharacterBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D



const SPEED = 900.0
const JUMP_VELOCITY = -1050.0
var directions


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

		
	var direction := Input.get_axis("Move Left", "Move Right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

#FLIP SPRITE
	flip_sprite(direction)
	move_and_slide()

func flip_sprite(direction):
	if direction == 1:
		animated_sprite_2d.flip_h = false
	elif direction == -1:
		animated_sprite_2d.flip_h = true


#PLAY ANIMATIONS
	if is_on_floor():
		if direction == 0:
			animated_sprite_2d.play("IDLE")
		else:
			animated_sprite_2d.play("RUN")
	else:
		animated_sprite_2d.play("JUMP")
	if Input.is_action_pressed("FAK"):
		animated_sprite_2d.play("WACK")
