extends "res://scenes/desafios/desafio.gd"

@export var option_test: Array[option];

var resultado = 25;

# Called when the node enters the scene tree for the first time.
func _ready():
	for _option in option_test:	
		_option.initialize(on_pickup_option);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func nome():
	return "desafio test"
	
func on_pickup_option(value: int):
	print(value)
	if (value == resultado):
		emit_ganhou_desafio();

