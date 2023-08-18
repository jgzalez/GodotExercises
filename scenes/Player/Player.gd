extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var can_shoot = true
var can_grenade = true
signal laser_is_shot(pos)
signal grenade_is_thrown

var laser_scene = preload("res://scenes/Assets/laser.tscn")
var direction = Vector2()
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(350,461)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	direction = Input.get_vector("ui_left", "ui_right", "ui_up","ui_down")
	velocity = direction * 200
# warning-ignore:return_value_discarded
	move_and_slide(velocity)
	
	if Input.is_action_pressed("main") and can_shoot == true :
		can_shoot = false
		var LaserStart = $LaserStartPositions.get_children()
		var selectedLaser = LaserStart[randi() % LaserStart.size()]
		emit_signal("laser_is_shot", selectedLaser.global_position)
		
		$TimerAct.start(0.5)
	
	if Input.is_action_pressed("Second") and can_grenade == true:
		can_grenade = false
		print("shoot grenade")
		emit_signal("grenade_is_thrown")
		$TimerAct2.start(2)
#	print(direction)
	

func _on_TimerAct_timeout():
	can_shoot = true


func _on_TimerAct2_timeout():
	can_grenade = true
