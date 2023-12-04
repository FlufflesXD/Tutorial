extends RigidBody2D

const speed = 750
var direction: Vector2 = Vector2.UP

func _process(delta):
	position += direction * speed * delta
