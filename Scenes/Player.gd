extends RigidBody2D

func _physics_process(delta):
	var rotationForce = 100.0
	
	var blackPressed = false
	var blackRotation = 0.0
	if Input.is_action_pressed("ui_a"):
		blackPressed = true
		blackRotation -= rotationForce
	if Input.is_action_pressed("ui_d"):
		blackPressed = true
		blackRotation += rotationForce
		
	var whitePressed = false
	var whiteRotation = 0.0
	if Input.is_action_pressed("ui_left"):
		whitePressed = true
		whiteRotation -= rotationForce
	if Input.is_action_pressed("ui_right"):
		whitePressed = true
		whiteRotation += rotationForce
	
	if blackPressed:
		$BlackWheel.angular_velocity += blackRotation * delta
	if whitePressed:
		$WhiteWheel.angular_velocity += whiteRotation * delta
