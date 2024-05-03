extends Node2D

var played = false

func _input(event):
	if !played and event is InputEventKey and event.is_pressed():
		$AnimationPlayer.play("RESET")
		played = true
		$AnimationPlayer.play("trailer")
