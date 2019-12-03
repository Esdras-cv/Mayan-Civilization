extends Control

signal hortalicaClick
signal pimentaoClick
signal tomateClick
signal beringelaClick
signal milhoClick

func _on_TextureButton_pressed():
	emit_signal("hortalicaClick")
	Global.set_plant("Planta1")
	
func _on_TextureButton2_pressed():
	emit_signal("pimentaoClick")
	Global.set_plant("Planta5")	
	
func _on_TextureButton3_pressed():
	emit_signal("tomateClick")
	Global.set_plant("Planta2")

func _on_TextureButton4_pressed():
	emit_signal("beringelaClick")
	Global.set_plant("Planta4")

func _on_TextureButton5_pressed():
	emit_signal("milhoClick")
	Global.set_plant("Planta3")

func _physics_process(delta):
	$HBoxContainer/HBoxContainer2/Label2.text = str(Global.coletados_total)