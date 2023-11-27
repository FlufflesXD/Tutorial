extends CharacterBody2D

var speedX: int = 300

func _ready():
	position = Vector2(100, 400)

func _process(_delta):
	var direction = Vector2.RIGHT
	
	velocity = direction * 100
	
	if velocity.x > 1000:
		velocity.x = 1
	
	move_and_slide()
