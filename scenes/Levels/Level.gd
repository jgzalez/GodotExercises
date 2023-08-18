extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var laser_scene = preload("res://scenes/Assets/laser.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Level node is ready")

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass






func _on_Gate_playerEnter():
	print("player has entered")


func _on_Gate_playerExit():
	print("player has exited")


func _on_Player_grenade_is_thrown():
	print("grenade has been thrown")


func _on_Player_laser_is_shot(pos):
	var laser = laser_scene.instance()
	laser.position = pos
	add_child(laser)
	print(pos)
#	print("Laser is shot")
