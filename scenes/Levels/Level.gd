extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Level node is ready")
	get_node("Logo").rotation_degrees = 90
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Logo.rotation_degrees += 30 * delta
	
	if $Logo.rotation_degrees > 900:
		$Logo.rotation_degrees = 0
	
	if ($Logo.position.x > 1000) :
		$Logo.pos.x = 0
		$Logo.position.x = 0

