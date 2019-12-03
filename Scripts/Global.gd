extends Node

var current_plant = null
var coletados_tipo1 = 0
var coletados_tipo2 = 0
var coletados_tipo3 = 0
var coletados_tipo4 = 0
var coletados_tipo5 = 0
var coletados_total = 0
var objetivo = 20

func set_plant(type):
	current_plant = type

func get_plant():
	return current_plant