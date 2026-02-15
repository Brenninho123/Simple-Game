extends Node2D

var glow_timer = 0
var glow_direction = 1

func _ready():
    # Conectar os botões
    $StartButton.connect("pressed", self, "_on_StartButton_pressed")
    $QuitButton.connect("pressed", self, "_on_QuitButton_pressed")
    
    # Iniciar música
    $MusicPlayer.play()
    
    # Configura Label central
    $TitleLabel.modulate = Color(1,1,1)

func _process(delta):
    # Efeito de brilho pulsante no título
    glow_timer += delta * glow_direction
    if glow_timer > 1:
        glow_timer = 1
        glow_direction = -1
    elif glow_timer < 0:
        glow_timer = 0
        glow_direction = 1
    $TitleLabel.modulate = Color(1,1,1).linear_interpolate(Color(1,1,0.5), glow_timer)

func _on_StartButton_pressed():
    get_tree().change_scene("res://scenes/main.tscn")

func _on_QuitButton_pressed():
    get_tree().quit()