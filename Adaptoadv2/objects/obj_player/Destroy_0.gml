/// @description Insert description here
// You can write your code in this editor
lives--
audio_play_sound(snd_kill_character,0,0)
if(lives > 0)
	room_restart()
else
	global.game_over = true
