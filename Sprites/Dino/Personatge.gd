extends KinematicBody2D

var velocitat_base = 350
var velocitat = Vector2.ZERO
var direccio = Vector2.DOWN
var gravetat = Vector2.DOWN * 1600
var velocitat_salt = -600
var salts_restants = 1
var corrent = false

func _physics_process(delta):
	velocitat += gravetat * delta
	

	velocitat.x = 0
	if Input.is_action_pressed("right"):
		velocitat += Vector2.RIGHT * velocitat_base

	if Input.is_action_pressed("left"):
		velocitat += Vector2.LEFT * velocitat_base

	if is_on_floor() == true:
		salts_restants = 1

	if Input.is_action_just_pressed("up") and salts_restants > 0:
		velocitat.y = velocitat_salt
		salts_restants -= 1

	velocitat = move_and_slide(velocitat, Vector2.UP)
	anima(velocitat)

func anima(velocitat):
	if velocitat.x > 0:
		$AnimatedSprite.flip_h = false
	elif velocitat.x < 0:
		$AnimatedSprite.flip_h = true

	if is_on_floor() and not corrent and abs(velocitat.x) > 0.1:
		$AnimatedSprite.play("Run")
	
	elif abs(velocitat.x) < 0.1 and is_on_floor():
		$AnimatedSprite.play("Idle")

	if velocitat.y < 0:
		$AnimatedSprite.play("Rise")
	elif velocitat.y > 0:
		$AnimatedSprite.play("Fall")
		
func _on_Area2D_body_entered(body):
	if "KinematicBody2D" in body.name:
		get_tree().change_scene("res://Pantalles/Defeat/Victory.tscn")
		
func _on_TextureButton_pressed():
		get_tree().change_scene("res://Pantalles/Pantalla1/Pantalla1.tscn")
