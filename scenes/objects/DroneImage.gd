extends CharacterBody2D

var speedX: int = 300

func _ready():
	position = Vector2(100, 300)

func _process(delta):
	position.x += speedX * delta
	
	if position.x > 1000:
		position.x = 0
