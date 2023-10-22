extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass




func _on_gate_player_entered_gate():
	print("player has entered the gate")


func _on_player_laser_shoot():
	print("laser shoot from level")


func _on_player_grenade_throw():
	print("grenade throw from level")
