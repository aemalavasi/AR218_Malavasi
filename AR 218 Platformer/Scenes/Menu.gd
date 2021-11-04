extends Node2D


func _on_Play_pressed():
	get_tree().change_scene("res://Scenes/Level1.tscn")
	Global.current_level = 1


func _on_Artist_Statement_pressed():
	get_tree().change_scene("res://Scenes/ArtistStatement.tscn")


func _on_Instructions_pressed():
	get_tree().change_scene("res://Scenes/Instructions.tscn")
