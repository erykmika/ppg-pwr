extends CharacterBody3D

const SPEED = 6
const ROTSPEED = 7
const ROTSPEED_RADIANS = deg_to_rad(ROTSPEED)

func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_right") and Input.is_action_just_pressed("ui_left"):
		velocity.x = 0
	elif Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$MeshInstance3D.rotate_z(-ROTSPEED_RADIANS)
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$MeshInstance3D.rotate_z(ROTSPEED_RADIANS)
	else:
		velocity.x = lerp(velocity.x, 0.0, 0.1)
	if Input.is_action_just_pressed("ui_up") and Input.is_action_just_pressed("ui_down"):
		velocity.z = 0
	elif Input.is_action_pressed("ui_up"):
		velocity.z = -SPEED
		$MeshInstance3D.rotate_x(-ROTSPEED_RADIANS)
	elif Input.is_action_pressed("ui_down"):
		velocity.z = SPEED
		$MeshInstance3D.rotate_x(ROTSPEED_RADIANS)
	else:
		velocity.z = lerp(velocity.z, 0.0, 0.1)
	move_and_slide()
