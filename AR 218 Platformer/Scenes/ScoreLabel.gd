extends Label

var strings = ["", " COOKIES COLLECTED", " SUPPLIES COLLECTED", " COSTUMES COLLECTED", " FIGURES COLLECTED"]
#func _on_Collectable_Banri_coin_collected():
#	pass # Replace with function body.
#	text = String(Global.score) + my_string


func _on_Collectable_Cookie_coin_collected():
	print (Global.current_level)
	text = String(Global.score) + strings[Global.current_level]
#




