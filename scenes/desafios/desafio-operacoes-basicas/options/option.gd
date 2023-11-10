extends Area2D

class_name option

@export var texture: Texture2D;
@export var value: int = 0;

var on_pickup_callable: Callable;

# Called when the node enters the scene tree for the first time.
func _ready():
	$sprite.texture = texture;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func initialize(on_pickup: Callable):
	on_pickup_callable = on_pickup;

func _on_body_entered(body):
	if (on_pickup_callable):
		on_pickup_callable.bind(value).call()
