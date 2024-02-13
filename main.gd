extends Node2D

const SCREEN_H_MAX = 1598
const SCREEN_W_MAX = 1920

func _ready() -> void:
	camera_zoom()


func _process(delta: float) -> void:
	camera_zoom()


func camera_zoom ():
	var zoom = 1
	var win_rect = get_viewport().get_visible_rect()
	if win_rect.size.y > SCREEN_H_MAX:
		zoom = win_rect.size.y / SCREEN_H_MAX

	$Camera2D.zoom = Vector2.ONE*zoom
		
		
