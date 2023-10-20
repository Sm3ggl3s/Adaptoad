// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function damage(amount, type){
	if(!obj_player.invulnerable){
		if(global.resistant and type == 0){
			amount -= 9
		}
		obj_player.players_damage[type] += amount
		health -= amount
		obj_player.invulnerable = true
		obj_player.alarm[0] = 100
	}
}