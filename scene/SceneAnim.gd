tool
extends AnimationPlayer

var display
var circ


# Called when the node enters the scene tree for the first time.
func _ready():
	display = get_parent().get_node("Display")
	circ = display.get_node("Ancestors/Circle1")

export var speaking = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	display = get_parent().get_node("Display")
	circ = display.get_node("Ancestors/Circle1")
	if speaking:
		circ.position.y = sin(current_animation_position) * 10
		circ.get_child(0).position.y = sin(current_animation_position + 3.14/4) * 10
		circ.get_child(0).get_child(0).position.y = sin(current_animation_position + 2*3.14/4) * 10
