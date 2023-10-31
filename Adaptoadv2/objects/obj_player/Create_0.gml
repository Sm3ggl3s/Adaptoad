alpha = 0

gravity_direction = 270

health = 100 //players health
score = 0

players_damage = [0,0,0,0,0] //store player damage

invulnerable = false //stores players invulnerability state

jumpCounter = 0

enum player_states{
	attack,
	idle,
	moving 
}

state = player_states.idle