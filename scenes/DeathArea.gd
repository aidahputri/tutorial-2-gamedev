extends Area2D

func _on_DeathArea_body_entered(body: RigidBody2D):
	if body.name in ["BlueShip", "GreenShip"]: 
		print("Reset level...")
		call_deferred("reset_level")

func reset_level():
	get_tree().reload_current_scene()
