extends Node2D

# Called when the node enters the scene tree for the first time.
signal animation_finished

signal hide_effects
signal show_effects

var skipped = false

func run():
	$HamaIndustries/AnimationPlayer.play("logo")
	yield($HamaIndustries/AnimationPlayer, "animation_finished")
	emit_signal("animation_finished")
