//instance_create_layer(obj_spawn_point.x, obj_spawn_point.y, "Character_Instances", obj_spawn_point.spawn_type)

// all points choose between spawning a beetle or a fly
with(obj_spawn_point) {
	var choice = random_range(0, 1)
	if(choice < 0.5) {
		spawn_type = obj_beetle
	}
	else {
		spawn_type = obj_fly
	}
	instance_create_layer(x, y, "Character_Instances", spawn_type)
}