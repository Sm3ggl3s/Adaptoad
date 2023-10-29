//instance_create_layer(obj_spawn_point.x, obj_spawn_point.y, "Character_Instances", obj_spawn_point.spawn_type)

with(obj_spawn_point) {
	instance_create_layer(x, y, "Character_Instances", spawn_type)
}