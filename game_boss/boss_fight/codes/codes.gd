extends Health
class_name enemy_Health
func _on_damge_area_entered(area) -> void:
	if area is Hurtbox:
		damage()
		print(health)
	pass # Replace with function body.
