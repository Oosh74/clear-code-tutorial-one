extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D


var direction := Vector2(1, 0)
var speed = 20

#Vectors
#Vector to can also be accessed via variables
var move_right := Vector2.RIGHT # this would be (1.0, 0.0), useful for moving right
var move_down := Vector2.DOWN 
var move_left := Vector2.LEFT
var move_up := Vector2.UP 

#func _ready():
	#sprite_2d.position = direction
	#print(move_up)

func _process(delta: float) -> void:
	sprite_2d.position += (direction * speed) * delta
	print(sprite_2d.position * 3)
	for i in example_array:
		print('array example: ', i)
	
	for i in example_dict:
		print('dict array: ', i + ': ' + example_dict[i])

#Arrays
var example_array = ["hello", "goodbye", "adios", "muchacho"]

#Dictionaries
var example_dict = {
	'a': 'Hello', 
	'b': 'Goodbye',
	'c': 'Cacio',
	'd': 'Pepe'
}
