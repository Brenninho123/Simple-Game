extends Node2D

# Funções conectadas aos botões
func _ready():
    $StartButton.connect("pressed", self, "_on_StartButton_pressed")
    $QuitButton.connect("pressed", self, "_on_QuitButton_pressed")

func _on_StartButton_pressed():
    # Troca para a cena principal do jogo
    get_tree().change_scene("res://scenes/main.tscn")

func _on_QuitButton_pressed():
    get_tree().quit()