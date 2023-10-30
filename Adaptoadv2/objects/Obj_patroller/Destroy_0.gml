/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,"instances",obj_monster_dead)
health += 10
// sound from freesound.org:
// https://freesound.org/people/Gcastanera/sounds/266535/
audio_play_sound(snd_bug_defeated, 10, false)

