extends Area2D

var speed = 0
var speed1 = 300
var direccio = Vector2.RIGHT

func _process(delta):
	position += speed1 * direccio * delta
	if position.x >= 1500:
		position.x = 1500
		direccio = Vector2.ZERO

