extends CharacterBody3D



func _unhandled_input(event):
	if event is InputEventMouseMotion:
		rotation_degrees.y -= event.relative.x * 0.5
		%Camera3D.rotation_degrees.x -= event.relative.y * 0.2
		%Camera3D.rotation_degrees.x = clamp(
			%Camera3D.rotation_degrees.x, -80.0, 80.0
		)
		# %Camera3D is the same as get_node("Camera3D") or $Camera3D
		# %gun_model is the same as get_node("Camera3D/gun_model") or $Camera3D/gun_model
