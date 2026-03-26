extends Node2D

var test: String = "some test string"
var int_test := 123


func _ready():
	print(pythagoras_theorem(10, 20))
	print(test)
	print(int_test)

func pythagoras_theorem(a, b):
	return (a ** 2 + b ** 2) ** 0.5
