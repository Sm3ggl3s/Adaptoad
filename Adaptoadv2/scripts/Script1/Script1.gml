// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function damage(amount, type){
	if(!obj_player.invulnerable){
		if(global.resistant and type == 0){
			amount -= 25
		}
		obj_player.players_damage[type] += amount
		health -= amount
		obj_player.invulnerable = true
		obj_player.alarm[0] = 100
		if(health <= 0)
			obj_player.alarm[1] = 1
			
		// play frog croak when player takes damage (as long as still alive)
		if(health > 0) {
			// sound from freesound.com:
			//https://freesound.org/people/InspectorJ/sounds/484763/
			audio_play_sound(snd_frog_dmg, 10, false)
		}
	}
}