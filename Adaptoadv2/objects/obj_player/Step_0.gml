//Don't walk through wall
if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)) {
	x += -move_speed
	image_xscale = -1
	state = player_states.moving
}
if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)) {
	x += move_speed
	image_xscale = 1
	state = player_states.moving
}

//Don't fall through ground
if(instance_place(x, y+1, obj_block))
	gravity = 0
else
	gravity = .25

//Jump
if(keyboard_check_pressed(vk_up) and instance_place(x, y+1, obj_block)){
	vspeed = jump_height
	jumpCounter = 0
}

//Double Jump
if(global.doubleJump and jumpCounter < 1 and keyboard_check_pressed(vk_up) and !instance_place(x, y+1, obj_block)){
	vspeed = jump_height *.75
	jumpCounter++
}

//terminal velocity
if(vspeed > 15)
		vspeed = 15

//Attack
if(keyboard_check_pressed(ord("Z")) and global.canAttack){
	instance_create_layer(x,y,"Instances",Obj_sword)
	state = player_states.attack
}

//transparent when invulnerable
if(invulnerable)
	image_alpha = 0.5
	
if(!global.resistant){
	if(state == player_states.attack)
		sprite_index = spr_player_attack
	else if(state == player_states.moving)
		sprite_index  = spr_player_moving
	else
		sprite_index = spr_player
}
else{
	if(state == player_states.attack)
		sprite_index = spr_player_resist_attack
	else if(state == player_states.moving)
		sprite_index  = spr_player_resist_moving
	else
		sprite_index = spr_player_resist
}
	
