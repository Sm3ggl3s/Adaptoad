room_goto(Main_Menu)

global.canAttack = false
global.doubleJump = false
global.resistant = false

global.counter = 0

global.bossfight = false
// ambience
// sound from freesound.com:
// https://freesound.org/people/digifishmusic/sounds/57670/
audio_stop_all()
audio_play_sound(snd_ambience, 10, true)