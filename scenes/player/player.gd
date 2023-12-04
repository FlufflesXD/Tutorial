extends CharacterBody2D

var can_laser: bool = true
var can_grenade: bool = true

signal laserFired(pos, direction)
signal grenadeFired(pos, direction)

func _process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()

	look_at(get_global_mouse_position())

	if Input.is_action_pressed("primary_action") and can_laser:
		var laser_markers = $LaserStartPositions.get_children()
		var selected_laser = laser_markers[randi() % laser_markers.size()]
		$LaserCooldown.start()
		laserFired.emit(selected_laser.global_position)
		can_laser = false
		
	if Input.is_action_pressed("secondary_action") and can_grenade:
		var pos = $LaserStartPositions.get_children()[0].global_position
		var player_direction = (get_global_mouse_position() - position).normalized()
		$GrenadeCooldown.start()
		grenadeFired.emit(pos, direction)
		can_grenade = false

func _on_laser_cooldown_timeout():
	can_laser = true

func _on_grenade_cooldown_timeout():
	can_grenade = true
