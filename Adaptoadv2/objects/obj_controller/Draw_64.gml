if(obj_player.invulnerable){
		draw_set_colour(c_blue);
		draw_rectangle(8, 8, 62, 32, true);
	}
	draw_healthbar(10, 10, 60, 30, health, c_black, c_red, c_lime, 0, true, true)

	draw_set_alpha(obj_player.alpha);

	draw_set_colour(c_black);

	draw_rectangle(0,0,room_width,room_height,-1);

	draw_set_alpha(1);
