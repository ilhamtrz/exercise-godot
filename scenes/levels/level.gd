extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Logo.rotation_degrees += 100 * delta
	
	if $Logo.position.x > 1000:
		print("position exceeded")
		$Logo.pos.x = 0
	
#	if Input.is_action_pressed("left"):
