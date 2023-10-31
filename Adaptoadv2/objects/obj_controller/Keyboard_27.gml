room_goto(Main_Menu)
global.bossfight = false
global.canAttack = false
global.doubleJump = false
global.resistant = false
if(!audio_is_paused(snd_boss_fight) and audio_is_playing(snd_boss_fight)) {
	audio_play_sound(snd_ambient, 10, true)
	audio_pause_sound(snd_boss_fight)
}

