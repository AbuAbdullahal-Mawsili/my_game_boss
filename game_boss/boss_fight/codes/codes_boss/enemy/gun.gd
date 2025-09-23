extends Sprite2D




var player:CharacterBody2D
func _ready() -> void:
	player = get_tree().get_first_node_in_group("Player")


func _process(_delta: float) -> void:
	look_at(player.global_position)
