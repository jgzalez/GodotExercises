extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity : int


# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = 200
	position = Vector2(50,50)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += velocity * delta
