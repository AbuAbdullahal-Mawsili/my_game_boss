extends State
class_name State_Loop

@export var player:CharacterBody2D
@export var enemy:CharacterBody2D


var movements:Array = [ 12, 290]

func _ready() -> void:
	player = get_tree().get_first_node_in_group("Player")

func _physics_process(_delta: float) -> void:
	if not player.is_on_floor():
		player.velocity.y += movements[0]
