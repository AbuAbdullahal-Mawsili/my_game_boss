extends State_Loop
class_name Idle


func Physics_Update(_delta: float):
	
	if Input.get_axis("left","right"):
		Switch.emit(self,"Move")
	
	else :
		player.velocity.x = 0
	
	
	if Input.is_action_pressed("jump"):
		Switch.emit(self,"Jump")
