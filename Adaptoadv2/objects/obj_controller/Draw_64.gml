if(instance_exists(obj_player)){
	if(obj_player.invulnerable){
			draw_set_colour(c_blue);
			draw_rectangle(8, 8, 112, 32, true);
		}
		draw_healthbar(10, 10, 110, 30, health, c_black, c_red, c_lime, 0, true, true)

		draw_set_alpha(obj_player.alpha);

		draw_set_colour(c_black);

		draw_rectangle(0,0,room_width,room_height,-1);

		draw_set_alpha(1);
		
		draw_text(70, 50, score);
		
		draw_text(10, 50, "Kills: ");
}