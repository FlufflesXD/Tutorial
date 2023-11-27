extends Sprite2D

var speed: int = 200

func _ready():
	position = Vector2(100, 300)

func _process(delta):
	position.x += speed * delta
