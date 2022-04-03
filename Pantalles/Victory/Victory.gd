extends Node2D



func _on_TextureButton_pressed():
	get_tree().change_scene("res://Pantalles/Pantalla1/Pantalla1.tscn")


func _on_Button_pressed():
	get_tree().change_scene("res://Pantalles/Victory/Victory.tscn")
