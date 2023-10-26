if(instance_exists(obj_player)){
	if(attack_range > distance_to_object(obj_player)){
		hspeed = 0
		tracking = true
		path_end()
		direction = point_direction(x,y,obj_player.x,obj_player.y)
		speed = hsp
	}
	else if(attack_range * 2 < distance_to_object(obj_player)){
		tracking = false
		var temp = hspeed
		if(vspeed != 0)
			speed = 0
		if(hspeed == 0)
			hspeed = temp
	}
}
if(hspeed > 0)
	image_xscale = xscale
else
	image_xscale = -xscale

