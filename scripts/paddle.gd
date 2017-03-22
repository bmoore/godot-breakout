extends KinematicBody2D

const BALL_SCENE = preload("res://mini-scenes/Ball.xml")

func _ready():
	set_fixed_process(true)
	set_process_input(true)

func _fixed_process(delta):
	set_pos(Vector2(get_viewport().get_mouse_pos().x, get_pos().y))

func _input(event):
	if event.type == InputEvent.MOUSE_BUTTON && event.is_pressed():
		var ball = BALL_SCENE.instance()
		ball.set_pos(get_pos()-Vector2(0,16))
		get_tree().get_root().add_child(ball)