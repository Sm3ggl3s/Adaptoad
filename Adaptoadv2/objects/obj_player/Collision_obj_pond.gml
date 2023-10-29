/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E")) and alpha == 0){
    alarm[1] = 5
    if(players_damage[2] >= 20)
        global.doubleJump = true
    if(players_damage[1] >= 40)
        global.canAttack = true
    if(players_damage[0] >= 60)
        global.resistant = true
}








