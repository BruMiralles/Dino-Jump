extends Node2D




func _on_Area2D2_body_entered(body):
	if "KinematicBody2D" in body.name:
		get_tree().change_scene("res://Pantalles/Victory2/Victory.tscn")


func _on_1_body_entered(body):
	if "KinematicBody2D" in body.name:
		get_tree().change_scene("res://Pantalles/Defeat/Victory.tscn")


func _on_11_body_entered(body):
	if "KinematicBody2D" in body.name:
		get_tree().change_scene("res://Pantalles/Defeat/Victory.tscn")

func _on_2_body_entered(body):
	if "KinematicBody2D" in body.name:
		get_tree().change_scene("res://Pantalles/Defeat/Victory.tscn")


func _on_22_body_entered(body):
	if "KinematicBody2D" in body.name:
		get_tree().change_scene("res://Pantalles/Defeat/Victory.tscn")
