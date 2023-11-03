extends Area2D

@export var texture: Texture2D;

# Called when the node enters the scene tree for the first time.
func _ready():
	$sprite.texture = texture;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
