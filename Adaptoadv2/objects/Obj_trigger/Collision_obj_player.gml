global.bossfight = true
// original x, y: 96, 96
instance_create_layer(96, 96, "Character_Instances", Obj_snake)

// pause backgoround sound
// play new bossfight music
audio_pause_sound(snd_ambience)

instance_destroy()








