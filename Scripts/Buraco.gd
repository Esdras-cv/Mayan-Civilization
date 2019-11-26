extends Area2D

const MAX_PLANTAS = 5
var num_plantas = 0
signal buracoClick

func _ready():
	pass

func _process(delta):
	pass

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == 1 and num_plantas < MAX_PLANTAS:
		emit_signal("buracoClick")
		num_plantas += 1