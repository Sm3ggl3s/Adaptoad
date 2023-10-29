//instance_create_layer(obj_spawn_point.x, obj_spawn_point.y, "Character_Instances", obj_spawn_point.spawn_type)

// all points spawn a fly
with(obj_spawn_point) {
	spawn_type = obj_fly
	instance_create_layer(x, y, "Character_Instances", spawn_type)
}