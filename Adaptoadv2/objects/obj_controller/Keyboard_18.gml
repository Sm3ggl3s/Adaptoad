/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("R")))
	room_restart()
else if(keyboard_check_pressed(ord("G")))
	game_restart()
	
	
// cheat code to give all evolutions
else if(keyboard_check_pressed(ord("U"))) {
	global.doubleJump = true
	global.canAttack = true
	global.resistant = true
}