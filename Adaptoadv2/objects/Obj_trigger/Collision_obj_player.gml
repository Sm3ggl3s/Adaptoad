if(!global.bossfight)
	instance_create_layer(96, 96, "Character_Instances", Obj_snake)


// pause backgoround sound
// play new bossfight music

if(!global.bossfight) {
	audio_stop_all()
	audio_play_sound(snd_boss_fight, 10, true)
}
global.bossfight = true








