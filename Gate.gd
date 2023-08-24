extends StaticBody2D

signal playerEnter
signal playerExit

func _on_Area2D_body_entered(body):
	emit_signal("playerEnter")


func _on_Area2D_body_exited(body):
	emit_signal("playerExit")
