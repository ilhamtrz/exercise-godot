extends Node2D

var speed: float = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	# move input
	var direction = Input.get_vector("left","right","up","down")
	position += direction * speed * delta
	
	
	#shooting input
	if Input.is_action_just_pressed("primary action"):
		print('shoot laser')
	
	if Input.is_action_just_pressed("secondary action"):
		print("throw grenade")
