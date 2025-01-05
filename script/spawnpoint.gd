extends Node3D

@export var object_to_spawn: PackedScene

func spawn_object():
	if object_to_spawn:
		# Instance the object
		var instance = object_to_spawn.instance()
		
		# Set its global transform to the spawn point
		instance.global_transform = $SpawnPoint.global_transform
		
		# Add it to the scene
		add_child(instance)
