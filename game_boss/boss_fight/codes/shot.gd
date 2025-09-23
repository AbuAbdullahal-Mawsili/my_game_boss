extends CharacterBody2D

const SPEED: int = 2500

func _physics_process(delta: float) -> void:
	position += transform.x * SPEED * delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		return
	queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("Araayes"):
		return
	queue_free()
	
	
	pass # Replace with function body.
