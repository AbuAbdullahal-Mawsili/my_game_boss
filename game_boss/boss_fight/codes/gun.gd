extends CharacterBody2D

const BULLET  = preload("res://scens/shot.tscn")
@onready var mullz: Marker2D = $mullz
var shot:int = 100
@onready var timer: Timer = $Timer

func _physics_process(_delta: float) -> void:
	look_at(get_global_mouse_position())
	rotation_degrees = wrap(rotation_degrees, 0 , 360)
	if rotation_degrees > 90 and rotation_degrees < 270:
		scale.y = -1
	else :
		scale.y = 1
	if shot <= 0:
		await get_tree().create_timer(0.5).timeout
		shot = 100
	if Input.is_action_pressed("fire") and shot >= 0 and timer.is_stopped():
		var bullet_instance = BULLET.instantiate()
		get_tree().root.add_child(bullet_instance)
		bullet_instance.global_position = mullz.global_position
		bullet_instance.rotation = rotation
		shot -= 1
		timer.start()
		print(shot)
		
		


	if Input.is_action_just_pressed("reload"):
		await get_tree().create_timer(0.5).timeout
		shot = 100
