extends State_Loop


class_name Follow
var move_speed:float = 250


func Physics_Update(_delta: float):
	var dir = player.global_position - enemy.global_position
	
	if dir.length() > 25:
		enemy.velocity = dir.normalized() * move_speed
	
	else:
		enemy.velocity = Vector2()
		
