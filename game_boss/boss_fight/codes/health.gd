extends Node
class_name Health


@export var MAX_HEALTH:float = 10.0
var health : float

func _ready() -> void:
	health = MAX_HEALTH
	
	

func damage() -> void:
	health -= 1
	
	if health <= 0:
		get_parent().queue_free()
