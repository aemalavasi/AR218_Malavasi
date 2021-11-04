extends KinematicBody2D

var velocity := Vector2(0,0)
export var speed := 90
export var jump := -700
const GRAVITY := 20

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		velocity.x = speed
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("left"):
		velocity.x = -speed
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.play("idle")
	#show with "pressed"
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y += jump
		$JumpSound.play()
	if not is_on_floor():
		$AnimatedSprite.play("air")

	velocity.y += GRAVITY

	velocity = move_and_slide(velocity, Vector2.UP)

	velocity.x = lerp(velocity.x, 0,0.1)


func _on_Fallzone_body_entered(body):
	get_tree().change_scene("res://Scenes/GameOver.tscn")
	pass # Replace with function body.
	

func _on_Goal_body_entered(body):
	Global.current_level+=1
	if Global.current_level > Global.num_levels:
		Global.current_level = 1
		get_tree().change_scene("res://Scenes/Menu.tscn/")
	else:
		get_tree().change_scene("res://Scenes/Level" + str(Global.current_level) + ".tscn")
	pass # Replace with function body.


func _on_EndGoal_body_entered(body):
	get_tree().change_scene("res://Scenes/WinScreen.tscn")
	pass # Replace with function body.
