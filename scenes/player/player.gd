extends CharacterBody2D

var can_laser: bool = true
var can_grenade: bool = true

signal laserFired
signal grenadeFired

func _process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()

	if Input.is_action_pressed("primary_action") and can_laser:
		print("Laser")
		$LaserCooldown.start()
		laserFired.emit()
		can_laser = false
		
	if Input.is_action_pressed("secondary_action") and can_grenade:
		print("Grenade")
		$GrenadeCooldown.start()
		grenadeFired.emit()
		can_grenade = false

func _on_laser_cooldown_timeout():
	can_laser = true

func _on_grenade_cooldown_timeout():
	can_grenade = true
