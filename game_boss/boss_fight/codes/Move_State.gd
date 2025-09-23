extends State_Loop
class_name Move


@onready var sprite: Sprite2D = $"../../Sprite2D"


func Physics_Update(_delta: float):
	if Input.is_action_pressed("left"):
		player.velocity.x = -movements[1]
		sprite.flip_h = true
	
	elif Input.is_action_pressed("right"):
		player.velocity.x = movements[1]
		sprite.  flip_h = false
	
	else :
		Switch.emit(self, "Idle")
	
	if Input.is_action_pressed("jump"):
		Switch.emit(self,"Jump")
	
