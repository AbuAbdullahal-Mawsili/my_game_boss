extends State_Loop
class_name Jump


@export var jump_high:float
@export var jump_time:float
@export var fall_time:float
@onready var jump_velocity: float = -((jump_high * 2) / jump_time)
@onready var jump_gravity: float = -((jump_high * -2) / pow(jump_time , 2))
@onready var fall_gravity: float = -((jump_high * -2) / pow(fall_time , 2))
func Physics_Update(_delta: float):
	if Input.is_action_pressed("jump") and player.is_on_floor():
		player.velocity.y = jump_velocity
	else :
		Switch.emit(self, "Idle")
	
	if Input.is_action_pressed("jump"):
		Switch.emit(self,"Jump")
	
	if Input.is_action_pressed("left"):
		player.velocity.x = -movements[1]
	
	elif Input.is_action_pressed("right"):
		player.velocity.x = movements[1]

func _physics_process(_delta: float) -> void:
	if not player.is_on_floor():
		player.velocity.y += get_gravity() * _delta

func get_gravity() -> float:
	return jump_gravity if player.velocity.y <= 0 else fall_gravity
