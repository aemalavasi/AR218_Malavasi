extends Node2D


func _on_Play_pressed():
	get_tree().change_scene("res://Scenes/Level1.tscn")
	Global.current_level = 1
