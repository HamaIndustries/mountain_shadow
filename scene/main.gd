extends Node2D

var played = false

func _input(event):
	if !played and event is InputEventKey and event.is_pressed():
		$SceneAnim.play("RESET")
		played = true
		$Front/OpeningStage.run()
		yield($Front/OpeningStage, "animation_finished")
		$SceneAnim.play("scroll")
