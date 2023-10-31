if(!invulnerable){
	boss_health -= 10
	invulnerable = true
	alarm[1] = 200
	image_alpha = 0.5
}
if(boss_health <= 0) {
	// sound from freesound.org:
	// https://freesound.org/search/?q=Wilhelm+Scream
	audio_play_sound(snd_snake_death, 10, false)
	instance_destroy()
}






