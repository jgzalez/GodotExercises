extends Area2D

const speed: int = 1000

var direction = Vector2.UP
#
func _process(delta):
	position += direction * speed * delta
#
