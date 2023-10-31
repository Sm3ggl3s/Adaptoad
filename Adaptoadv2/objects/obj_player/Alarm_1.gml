if(alpha < 1){
	alpha += 1/20
	alarm[1] = 5
}

if(alpha >= 1){
	if(health <= 0){
		room_goto(Lose_Screen)
		global.bossfight = false
		global.canAttack = false
		global.doubleJump = false
		global.resistant = false
	}
	else
		room_restart()
}






