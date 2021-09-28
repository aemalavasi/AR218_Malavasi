extends KinematicBody2D

var velocity = Vector2(0,0)

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = 100
		
	move_and_slide(velocity)
