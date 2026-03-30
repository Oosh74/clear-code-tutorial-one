extends Node2D

@onready var sprite_2d: Sprite2D = $Sprite2D

var pos := Vector2(500, 300)
#Vector to can also be accessed via variables
var move_right := Vector2.RIGHT # this would be (1.0, 0.0), useful for moving right
var move_down := Vector2.DOWN 
var move_left := Vector2.LEFT
var move_up := Vector2.UP 

func _ready():
	sprite_2d.position = pos
	print(move_up)
