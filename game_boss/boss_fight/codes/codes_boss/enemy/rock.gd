extends CharacterBody2D
class_name enemy_rock

var health:int = 1

var player:CharacterBody2D
func _ready() -> void:
	player = get_tree().get_first_node_in_group("Player")
func _physics_process(_delta: float) -> void:
	move_and_slide()
	
	look_at(player.global_position)

func damge():
	
	health -= 1
	if health <= 0:
		queue_free()

func _on_wild_body_entered(body: Node2D) -> void:
	if body.is_in_group("Rock"):
		return
	elif body.is_in_group("boss"):
		return
	queue_free()
	pass # Replace with function body.
