if(obj_player.invulnerable){
	draw_set_colour(c_blue);
	draw_rectangle(95, 95, 505, 205, true);
}
draw_healthbar(100, 100, 500, 200, health, c_black, c_red, c_lime, 0, true, true)