tool
extends Sprite

var f_target
const snap_dist = 5
var oldpos


func _ready():
	f_target = get_parent()
	
func _process(delta):
	if abs((oldpos - global_position).length) > snap_dist:
		global_position = oldpos + (global_position - oldpos)/2
	
	"""
	if not oldpos:
		oldpos = global_position
	var ppos = get_parent().global_position
	var dist = (ppos - oldpos) 
	
	var newpos = oldpos + (dist * delta / 100) * dist.length()
	
	oldpos = global_position
	
	if dist.length() <= SNAP_DIST:
		global_position = ppos
	else:
		global_position = newpos
"""
