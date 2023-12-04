extends Node2D

var laser_scene: PackedScene = preload("res://scenes/player/projectile.tscn")
var grenade_scene: PackedScene = preload("res://scenes/player/grenade.tscn")

func _on_gate_on_player_entered_gate(body):
	print("player has entered gate")


func _on_gate_on_player_exited_gate(body):
	print("player has exited gate")


func _on_player_laser_fired(pos):
	var laser = laser_scene.instantiate()
	laser.position = pos
	
	$Projectiles.add_child(laser)
	

func _on_player_grenade_fired(pos):
	var grenade = grenade_scene.instantiate()
	grenade.position = pos
	
	$Projectiles.add_child(grenade)
