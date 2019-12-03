extends Node2D

var Planta
var plantas = []
var qtd_itens

func _on_Area2D_buracoClick():
	if Planta != null:
		var planta = Planta.instance()
		planta.position = get_local_mouse_position()
		plantas.append(planta)
		add_child(planta)

func _on_Gui_hortalicaClick():
	Planta = load("res://scene/Planta1.tscn")

func _on_Gui_pimentaoClick():
	Planta = load("res://scene/Planta5.tscn")

func _on_Gui_tomateClick():
	Planta = load("res://scene/Planta2.tscn")

func _on_Gui_beringelaClick():
	Planta = load("res://scene/Planta4.tscn")

func _on_Gui_milhoClick():
	Planta = load("res://scene/Planta3.tscn")

func _on_Planta_planta_collected():
	qtd_itens += 1
	print("entrou")
	#Global.coletados_total+=1
	$Gui/HBoxContainer/HBoxContainer2/Label2.text = str(qtd_itens)