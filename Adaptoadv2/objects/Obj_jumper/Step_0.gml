event_inherited();
if(instance_place(x, y+1, obj_block) and active)
	vspeed = jump_height
if(hspeed == 0 and vspeed == 0)
	instance_destroy()