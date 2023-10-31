/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("R")))
	room_restart()
else if(keyboard_check_pressed(ord("G")))
	game_restart()
	
// cheat code to teleport to boss fight
else if(keyboard_check_pressed(ord("B")) and instance_exists(obj_player)) {
	if(instance_exists(obj_player)) {
		obj_player.x = 882
		obj_player.y = 102
	}
}
	
// cheat code to give all evolutions
else if(keyboard_check_pressed(ord("U"))) {
	global.doubleJump = true
	global.canAttack = true
	global.resistant = true
}