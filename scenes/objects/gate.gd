extends StaticBody2D

signal on_player_entered_gate(body)
signal on_player_exited_gate(body)

func _on_entrance_area_body_entered(body):
	on_player_entered_gate.emit(body)


func _on_entrance_area_body_exited(body):
	on_player_exited_gate.emit(body)
 
