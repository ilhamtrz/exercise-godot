extends StaticBody2D
signal player_entered_gate

func _on_gate_area_body_entered(_body):
	player_entered_gate.emit()
