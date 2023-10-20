if(keyboard_check_pressed(ord("E")) and alpha == 0){
	alarm[1] = 5
	if(players_damage[2] >= 30)
		global.doubleJump = true
	if(players_damage[1] >= 20)
		global.canAttack = true
	if(players_damage[0] >= 60)
		global.resistant = true
}
if(alpha >= 1)
	room_restart()


