extends Node2D

@export var nome_desafio: String;

signal ganhou_desafio;

func nome():
	pass 
	
func emit_ganhou_desafio():
	emit_signal("ganhou_desafio");
