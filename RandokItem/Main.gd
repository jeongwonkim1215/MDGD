extends Node2D

var v = 0
var h = 0
func _Random_vertical():
	v = randi()%24 + 1
func _Random_horizontal():
	h = randi()%21 + 1

func _process(delta):
	$Vnum/Align/VNUM.set_text(str(v))
	$Hnum/Align/HNUM.set_text(str(h))
	
	$Vertical.position = Vector2((v * 25) + ((v-1) * 7.12), 0)
	$Horizontal.position = Vector2(0, (h * 25) + ((h - 1) * 7.12))
	
	
	pass

func _on_VButton_pressed():
	_Random_vertical()
	pass

func _on_HButton_pressed():
	_Random_horizontal()
	pass

func _on_RButton_pressed():
	v = 0
	h = 0
	
	$Vertical.position = Vector2(0, 0)
	$Horizontal.position = Vector2(0, 0)
	pass


func _on_Button_pressed():
	_Random_vertical()
	_Random_horizontal()
	pass # Replace with function body.
