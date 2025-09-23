extends CharacterBody2D

#ارقام المتغيرات
var rng: Array[int] = [100, 200, 300, 100, 300, 200, 200, 100, 200, 300, 300, 200, 100, 100, 300]

#ما يحتاجون شرح 
@onready var enmey_rock = preload("res://scens/Rock.tscn")
@onready var enmey_Box  = preload("res://scens/Box_run.tscn")

@onready var respon_node = get_node("respones/respon")
@onready var respon2_node = get_node("respones/respon2")

func _on_timer_timeout() -> void:
	#هدفو يرتبة االاعداد بشكل عشوائي
	rng.shuffle()
	#هدفو بداله ما كل مره تكتب الrng[0] عشان تاخذ القيم لا تكتبها مره واحد
	var vale_rng = rng[0]
	print(vale_rng)
	#لتفادي التكرار و التقليل
	match vale_rng:
		100:
			respon_node.add_child(enmey_rock.instantiate())
		200:
			respon2_node.add_child(enmey_Box.instantiate())
		300:
			pass
	
	
	
	
