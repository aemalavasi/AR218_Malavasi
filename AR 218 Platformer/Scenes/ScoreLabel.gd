extends Label

var my_string = " FIGURES COLLECTED"
func _on_Collectable_coin_collected():
	pass # Replace with function body.
	
	text = String(Global.score) + my_string 

func _on_Collectable2_coin_collected():
	pass # Replace with function body.

	text = String(Global.score) + my_string

func _on_Collectable3_coin_collected():
	pass # Replace with function body.

	text = String(Global.score) + my_string
