
enum boss_states
{
	attack,
	idle
}

state = boss_states.idle
origin = x + 160
alarm[0] = 400

boss_health = 100

invulnerable = false

// audio from freesound.org:
// https://freesound.org/people/Robinhood76/sounds/699703/
audio_play_sound(snd_snake_hiss, 10, false)
alarm[2] = 400