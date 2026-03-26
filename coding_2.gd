extends Node2D

@onready var sprite: Sprite2D = %Sprite2D

func _ready():
	print("IM READY IM READY")
	#position.x = 900
	#We do not need to use dot notation to access properties or methods on the parent node
	#In this case, "Coding2". We simply type the property or method. This would move the x position by 900


func _process(delta: float):
	sprite.position.x += 100 * delta
	sprite.position.y += 50 * delta
	sprite.scale += Vector2(1, 1) * delta
	print(sprite.position)
