extends Control

signal hortalicaClick
signal pimentaoClick
signal tomateClick
signal beringelaClick
signal milhoClick

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_TextureButton_pressed():
	emit_signal("hortalicaClick")

func _on_TextureButton2_pressed():
	emit_signal("pimentaoClick")

func _on_TextureButton3_pressed():
	emit_signal("tomateClick")

func _on_TextureButton4_pressed():
	emit_signal("beringelaClick")

func _on_TextureButton5_pressed():
	emit_signal("milhoClick")
