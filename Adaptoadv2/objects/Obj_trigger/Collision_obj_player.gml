global.bossfight = true
// original x, y: 96, 96
instance_create_layer(96, 96, "Character_Instances", Obj_snake)

// pause backgoround sound
// play new bossfight music
audio_pause_sound(snd_ambience)
if(!audio_is_playing(snd_boss_fight)) {
	audio_play_sound(snd_boss_fight, 10, true)
}

instance_destroy()








