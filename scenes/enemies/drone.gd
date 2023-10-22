extends CharacterBody2D

var direction = Vector2.RIGHT
const speed: float = 400


func _process(_delta):
	velocity = direction * speed
	move_and_slide()
	print(position)
	
	if position.x > 1000:
		direction = Vector2.LEFT
	if position.x < 0:
		direction = Vector2.RIGHT
	
	
	
	
