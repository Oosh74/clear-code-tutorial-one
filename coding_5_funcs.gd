extends Node2D

var global_var := "Global variable" #accessible anywhere in the script


func _ready() -> void:
	print("READY!")
	test_func() #will print default
	test_func('ARGUMENT 123123123')
	print('Global: ', global_var)
	print('expected return test: ', test_func_two())
	print(calc(6, 2, 'add'))
	print(calc(6, 2, 'subtract'))
	print(calc(6, 2, 'multiply'))
	print(calc(6, 2, 'divide'))


func test_func(param_one: String = "default value") -> String:
	var local_var = 'local var to a function' #not accessible outside this function
	print('paramater: ', param_one)
	print('local: ', local_var )
	return "Finished"

func test_func_two(param: int = 1) -> int:
	return param

#Excercise:
#	Create calc function where you can add two numbers and the operation as a string
#	Example: calc(1,2,'plus')

func calc(a:int, b:int, operator: String = 'add') -> int:
	var result: int
	
	if operator == 'add':
		result = a + b
	elif operator == 'subtract':
		result = a - b
	elif operator == 'multiply':
		result = a * b
	elif operator == 'divide':
		result = a / b
	
	return result
