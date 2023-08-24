extends Node2D


# Declare member variables here. Examples:
const speed = 600
# var b = "text"

var laser_scene = preload("res://scenes/Assets/laser.tscn")
var grenade_scene = preload("res://scenes/Assets/Grenade.tscn")
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


func _on_Player_grenade_is_thrown(pos, direction):
	var grenade = grenade_scene.instantiate() as RigidBody2D
	grenade.global_position = pos
	grenade.linear_velocity = direction * grenade.speed
	add_child(grenade)
	print(pos)


func _on_Player_laser_is_shot(pos, dir):
	var laser = laser_scene.instantiate() as Area2D
	laser.position = pos
	laser.rotation = dir.angle() + 89.6
	laser.direction = dir
	add_child(laser)
	print(pos)

