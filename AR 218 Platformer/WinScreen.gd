extends Node2D


func _on_PlayAgain_pressed():
	get_tree().change_scene("res://Scenes/Level1.tscn")


func _on_Menu_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")
