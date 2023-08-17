extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pos: Vector2 = Vector2(0,0)
var speed : int = 200
var test_scale: Vector2 = Vector2 (1,1)
# Called when the node enters the scene tree for the first time.
func _ready():
	test_scale = Vector2(2,2)
	scale = test_scale
	pos = Vector2(200, 200)
	position = pos 
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pos.x += speed * delta
	position = pos
#	test_scale.x += 0.01
#	test_scale.y += 0.01
#	scale = test_scale
	print(position.x)
