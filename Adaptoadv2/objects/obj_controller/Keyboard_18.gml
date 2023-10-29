/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("R")))
	room_restart()
else if(keyboard_check_pressed(ord("G")))
	game_restart()
else if(keyboard_check_pressed(ord("L")))
	lives += 5
else if(keyboard_check_pressed(ord("N")))
	room_goto_next()
else if(keyboard_check_pressed(ord("P")))
	room_goto_previous()
	
// cheat code to give all evolutions
else if(keyboard_check_pressed(ord("U"))) {
	global.doubleJump = true
	global.canAttack = true
	global.resistant = true
}