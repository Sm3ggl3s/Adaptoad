if(instance_place(x+2, y, obj_block) or instance_place(x-2, y, obj_block)){
	hspeed = -hspeed
	image_xscale = -image_xscale
}
if(instance_place(x, y-2, obj_block))
{
	vspeed = 0
}