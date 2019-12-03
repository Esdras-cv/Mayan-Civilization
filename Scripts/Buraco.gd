extends Area2D

const MAX_PLANTAS = 5
var num_plantas = 0
signal buracoClick
var plant_type
var counter = 0
var same_type = true
#onready var LABEL = $Label

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == 1 and num_plantas < MAX_PLANTAS:
		if counter == 0 and Global.get_plant() != null:
			print(Global.get_plant())
			emit_signal("buracoClick")
			num_plantas += 1
		elif counter >= 0 and Global.get_plant() != null:
			if Global.get_plant() == plant_type:
				emit_signal("buracoClick")
				num_plantas += 1
		if num_plantas != 0:
			$Label.text = str(num_plantas)

func _on_Area2D_area_entered(area):
	if counter == 0:
		plant_type = area.name
		counter+=1
	
func _on_Area2D_area_exited(area):
	num_plantas -=1
	Global.coletados_total+=1
	if num_plantas == 0 and Global.get_plant() != null:
		counter = 0
	$Label.text = str(num_plantas)