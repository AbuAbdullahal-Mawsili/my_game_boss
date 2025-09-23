extends CharacterBody2D




@onready var gun : Sprite2D = $"Sprite2D/gun"




func _physics_process(_delta: float) -> void:
	move_and_slide()

func shot():
	
	var bullet_instance = preload("res://scens/shot_enemy.tscn").instantiate()
	get_tree().root.add_child(bullet_instance)
	bullet_instance.global_position = gun.global_position
	bullet_instance.rotation = rotation
	await  get_tree().create_timer(0.1).timeout
	$Sprite2D/gun/respon_shot/CollisionShape2D.disabled = true
	await  get_tree().create_timer(0.5).timeout
	$Sprite2D/gun/respon_shot/CollisionShape2D.disabled = false


func _on_respon_shot_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		shot()


	pass # Replace with function body.
