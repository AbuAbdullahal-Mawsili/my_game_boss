extends CharacterBody2D






var health: int = 1
func _physics_process(_delta: float) -> void:

	move_and_slide()
	velocity.x = 200
	velocity.y += 12
	
	await  get_tree().create_timer(10).timeout
	$".".queue_free()
	
	
	
	
	
	
	
	
	




	pass
