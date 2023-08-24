extends CharacterBody2D


var can_shoot = true
var can_grenade = true
signal laser_is_shot(pos, dir)
signal grenade_is_thrown(pos,dir)
var direction = Vector2()
var vel = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(350,461)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	direction = Input.get_vector("ui_left", "ui_right", "ui_up","ui_down")
	vel= direction * 200
	set_velocity(vel)
	move_and_slide()
	var player_direction = (get_global_mouse_position() - position).normalized()
	
	look_at(get_global_mouse_position())
	
	if Input.is_action_pressed("main") and can_shoot == true :
		can_shoot = false
		var LaserStart = $LaserStartPositions.get_children()
		var selectedLaser = LaserStart[randi() % LaserStart.size()]
		print(selectedLaser)
		emit_signal("laser_is_shot", selectedLaser.global_position, player_direction)
		print(selectedLaser.global_position)
		$TimerAct.start(0.5)
	
	if Input.is_action_pressed("Second") and can_grenade == true:
		can_grenade = false
		var GrenaderStart = $LaserStartPositions.get_children()
		var selectedGrenade =GrenaderStart[randi() % GrenaderStart.size()]
		print(selectedGrenade)
		emit_signal("grenade_is_thrown", selectedGrenade.global_position, player_direction)
		print(selectedGrenade.global_position)
		$TimerAct2.start(2)
#	print(direction)
	

func _on_TimerAct_timeout():
	can_shoot = true


func _on_TimerAct2_timeout():
	can_grenade = true
