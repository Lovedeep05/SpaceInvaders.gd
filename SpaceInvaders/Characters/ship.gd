extends CharacterBody2D

var move_speed : float = 300

func _physics_process(delta):
	var input_dir = Vector2(
		Input.get_action_strength("right")-Input.get_action_strength("left"),
		0
	)
	print(input_dir)
	velocity = input_dir * move_speed
	
	move_and_slide()
