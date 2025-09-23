extends Node
@export var player:CharacterBody2D
@export var enemy:CharacterBody2D



func _ready() -> void:
	player = get_tree().get_first_node_in_group("Player")
