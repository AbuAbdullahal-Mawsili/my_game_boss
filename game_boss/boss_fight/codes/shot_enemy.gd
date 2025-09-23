extends CharacterBody2D


const SPEED: int = 2500

func _physics_process(delta: float) -> void:
	position += transform.x * SPEED * delta
