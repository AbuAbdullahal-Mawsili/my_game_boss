extends CharacterBody2D

var health = 100

func _physics_process(_delta: float) -> void:
	move_and_slide()
	
	
	
	
func damage():
	health -= 10
	
	if health <- 0:
		queue_free()
	
	
