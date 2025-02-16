extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective Level 1!")
		call_deferred("change_scene", "res://scenes/MainLevel2.tscn")
	elif (body.name == "GreenShip"):
		print("Reached objective Level 2!")

func change_scene(scene_path: String):
	get_tree().change_scene_to_file(scene_path)
