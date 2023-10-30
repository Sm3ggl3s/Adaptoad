path_start(fly_path, hsp, path_action_restart, true)
//tracking = false
xscale = image_xscale

// Define states for patroller
// the patroller can be following the path
// the patroller can be tracking the player
// the patroller can be returning to the path
enum State {
	Patrol,
	Track,
	Return
}

// set the current state to Patrol
current_state = State.Patrol

// store the path's starting x and y values
path_start_x = path_get_x(path_patroller_1, 0)
path_start_y = path_get_y(path_patroller_1, 0)