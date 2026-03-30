extends Node2D
var a := 0
var direction_x := "right"
var direction_y := "down"
var speed := 150

@onready var character_body_2d: CharacterBody2D = $CharacterBody2D

func _ready():
	if 10 > 5:
		print("10 is greater than 5")
	print(7 > 5)
	if 4 == 4 and 10 > 5:
		print('this is true')
	if 4 == 4 or 10 < 5:
		print('this is still true')
	if 4 < 10:
		print("a")
	elif 1 == 1:
		print("c")
	else:
		print("b")


func _process(delta: float):
	if direction_x == "right":
		character_body_2d.position.x += speed * delta
	else:
		character_body_2d.position.x -= speed * delta
	
	if direction_y == "down":
		character_body_2d.position.y += speed * delta
	else:
		character_body_2d.position.y -= speed * delta




func _bottom_collision_detect(body: Node2D) -> void:
	direction_y = "up"

func _right_collision_detect(body: Node2D) -> void:
	direction_x = "left"

func _on_left_coll_body_entered(body: Node2D) -> void:
	direction_x = "right"

func _on_top_coll_body_entered(body: Node2D) -> void:
	direction_y = "down"

#	Vectors:
#		Basically a better way to store numbers
#		Vector2 and Vector3 are available (there are more, but these are main)
#		Vector2 stores two numbers: Vector2.x and Vector2.y
#		Vector2 is the same, but with an additional z value
#		Really useful for storing positions
#		Great for math:
#		Vector2(2,5) * 2 = Vector2(4,10)
#		We can also just add two vectors to eachoer
#		Vectors have a ton of great built-in methods
