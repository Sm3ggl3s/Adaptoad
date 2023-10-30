/*
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
}*/

// Patroller has three states defined in Create:
// Patrol
// Teacking
// Returning

// Patroller starts in Patrol state

// make sure player exists before performing any checks/actions
if(instance_exists(obj_player)) {
	// if patroller is in the Patrol state...
		// it tracks the player if player is close enough to it
		// it continues on the path if the player is not close enough
	if(current_state == State.Patrol) {
		// if the player is within range, start tracking the player
		if(attack_range > distance_to_object(obj_player)) {
			current_state = State.Track
			//hspeed = 0
			path_end()
			direction = point_direction(x, y, obj_player.x, obj_player.y)
			speed = hsp
		}
		// if the player is not within range, continue on the path
	}
	
	// if the patroller is in the Track state...
		// if the player goes out of range, have the patroller return to path
	if(current_state == State.Track) {
		// if player is out of range, stop tracking and start returning
		// to return, do the same as tracking player, except track to the path's x,y
		if(attack_range * 2 < distance_to_object(obj_player)) {
			current_state = State.Return
			direction = point_direction(x, y, path_start_x, path_start_y)
			speed = hsp
		}
		
		// if player is still in range, keep tracking the player
		if(attack_range > distance_to_object(obj_player)) {
			//hspeed = 0
			path_end()
			direction = point_direction(x, y, obj_player.x, obj_player.y)
			speed = hsp
		}
		
	}
	
	// if the patroller is in Return state...
		// once it reaches the Path again, it will go back to Patrol
		// at any point, the patroller could start to Track again if player is close enough
	if(current_state == State.Return) {
		// once path reached, restart path
		if(distance_to_point(path_start_x, path_start_y) <= 1) {
			current_state = State.Patrol
			path_start(fly_path, hsp, path_action_restart, true)
		}
		
		// track player if player is close enough again
		// don't track if inside a block
		if(attack_range > distance_to_object(obj_player) && !instance_place(x, y, obj_block)) {
			current_state = State.Track
			//hspeed = 0
			path_end()
			direction = point_direction(x, y, obj_player.x, obj_player.y)
			speed = hsp
		}
	}
}

/*
// referencing Shaun Spalding's Platformer Tutorial Video:
	// https://www.youtube.com/watch?v=IysShLIaosk
	// purpose of this code is to hard-code collision into the Step Event
// patroller should only care about collision when in Track state
if(current_state == State.Track) {
	// Horizontal Collision
	if(place_meeting(x + speed, y, obj_block)) {
		while(!place_meeting(x + sign(speed), y, obj_block)) {
			x += sign(speed)
		}
		speed = 0
	}
	
	// Vertical Collision
	if(place_meeting(x, y + speed, obj_block)) {
		while(!place_meeting(x, y + sign(speed), obj_block)) {
			y += sign(speed)
		}
		speed = 0
	}
}
*/

// prevent patroller from getting stuck if tracking from inside a block

/*
if(hspeed > 0)
    image_xscale = xscale
	//direction = 0
else
    image_xscale = -xscale
	//direction = 180
*/
// change direction on path
if(abs(angle_difference(180, direction)) < 90) {
	image_xscale = -1
}
else {
	image_xscale = 1	
}