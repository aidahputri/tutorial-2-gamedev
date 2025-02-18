extends Area2D

func _on_ObjectiveArea_body_entered(body):
	if body.name in ["BlueShip", "GreenShip"]: 
		print("Reached objective!")
		call_deferred("show_victory_screen")

func show_victory_screen():
	var victory_card = get_tree().get_first_node_in_group("VictoryCard")
	if victory_card:
		victory_card.visible = true

func _on_button_pressed():
	print("Next Level button clicked!")
	call_deferred("change_scene", "res://scenes/MainLevel2.tscn")
	
func change_scene(scene_path: String):
	get_tree().change_scene_to_file(scene_path)

func _on_reset_button_pressed():
	print("Reset button clicked!")
	call_deferred("change_scene", "res://scenes/MainLevel.tscn")
