extends Node2D
@export var install_state:State
var currt_state: State
var states_enemy: Dictionary = {}




func _ready() -> void:
	
	for child in get_children():
		if child is State:
			states_enemy[child.name.to_lower()] = child
			child.Switch.connect(state_on_guns_child)
	if install_state:
		install_state.Enter()
		currt_state = install_state



func _process(delta: float) -> void:
	if currt_state:
		currt_state.Update(delta)


func _physics_process(delta: float) -> void:
	if currt_state:
		currt_state.Physics_Update(delta)
		
		

func state_on_guns_child(state, state_name):
	if state != currt_state:
		return
	
	
	
	var state_new = states_enemy.get(state_name.to_lower())
	if !state_new:
		return
	
	
	if currt_state:
		currt_state.Exit()
	
	state_new.Enter()
	currt_state = state_new
	
	
