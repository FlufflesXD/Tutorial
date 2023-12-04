extends RigidBody2D

@export var speed: int = 800
var direction: Vector2 = Vector2.UP

func _process(delta):
	position += direction * speed * delta