extends Area2D

signal coin_collected

func _on_Collectable_Banri_body_entered(body):
	Global.score = Global.score + 1
	print(Global.score)
	
	emit_signal("coin_collected") 
	$CoinSound.play()
	$AnimationPlayer.play("Bounce")
	
	
	set_collision_layer_bit(3, false)
	set_collision_mask_bit(0, false) 
func _on_AnimationPlayer_animation_finished(anim_name):
	
	
	if anim_name == "Bounce":
	
		queue_free()
