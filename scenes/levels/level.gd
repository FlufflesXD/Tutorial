extends Node2D



func _on_gate_on_player_entered_gate(body):
	print("player has entered gate")


func _on_gate_on_player_exited_gate(body):
	print("player has exited gate")


func _on_player_laser_fired():
	print("Laser from level")

func _on_player_grenade_fired():
	print("Grenade from level")
