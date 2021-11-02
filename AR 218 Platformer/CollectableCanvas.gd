extends Area2D

signal coin_collected


func _on_CollectableCanvas_body_entered(body):
	Global.score = Global.score + 1
	print(Global.score)
	
	emit_signal("coin_collected")
	
	$AnimationPlayer.play("Bounce")
	
	set_collision_layer_bit(3, false)
	set_collision_mask_bit(0, false)


	queue_free()
