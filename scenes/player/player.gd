extends CharacterBody2D

var speed: float = 500
var can_laser: bool = true
var can_grenade: bool = true
const grenade_timer: float = 2
const laser_timer: float = 0.5
signal laser_shoot
signal grenade_throw

# Called when the node enters the scene tree for the first time.
func _ready():
	$LaserTimer.wait_time = laser_timer
	$GrenadeTimer.wait_time = grenade_timer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	# move input
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	move_and_slide()
	
	
	#shooting input
	if Input.is_action_just_pressed("primary action") and can_laser:
		laser_shoot.emit()
		can_laser = false
		$LaserTimer.start()
	
	if Input.is_action_just_pressed("secondary action") and can_grenade:
		grenade_throw.emit()
		can_grenade = false
		$GrenadeTimer.start()

func _on_laser_timer_timeout():
	can_laser = true

func _on_grenade_timer_timeout():
	can_grenade = true
