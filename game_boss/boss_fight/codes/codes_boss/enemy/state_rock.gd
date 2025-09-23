extends Node2D

var Cuurt_State: State
@export var install_State : State
var states :Dictionary = {}


func _ready() -> void:
	for child in get_children():
		if child is State:
			states[child.name.to_lower()] = child
			child.Switch.connect(on_states_Machines)
	if install_State:
		install_State.Enter()
		Cuurt_State = install_State

func _process(delta: float) -> void:
	if Cuurt_State:
		Cuurt_State.Update(delta) 

func _physics_process(delta: float) -> void:
	if Cuurt_State:
		Cuurt_State.Physics_Update(delta)


func on_states_Machines(state, new_state_machine):
	if state != Cuurt_State:
		return
	
	var new_state = states.get(new_state_machine.to_lower())
	if !new_state:
		return
	
	if Cuurt_State:
		Cuurt_State.Exit()
	
	new_state.Enter()
	Cuurt_State = new_state
	
