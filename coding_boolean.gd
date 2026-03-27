extends Node2D
var a := 0
var direction_x := "right"
var direction_y := "down"

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
		character_body_2d.position.x += 150 * delta
	else:
		character_body_2d.position.x -= 150 * delta
	
	if direction_y == "down":
		character_body_2d.position.y += 150 * delta
	else:
		character_body_2d.position.y -= 150 * delta




func _bottom_collision_detect(body: Node2D) -> void:
	direction_y = "up"
	print(direction_y)

func _right_collision_detect(body: Node2D) -> void:
	direction_x = "left"

func _on_left_coll_body_entered(body: Node2D) -> void:
	direction_x = "right"

func _on_top_coll_body_entered(body: Node2D) -> void:
	direction_y = "down"
