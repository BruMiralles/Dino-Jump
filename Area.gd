extends Area2D

var speed = 0
var speed1 = 300
var direccio = Vector2.LEFT

func _process(delta):
	position += speed1 * direccio * delta
	if position.x <= -250:
		position.x = -250
		direccio = Vector2.ZERO

