if(!invulnerable){
	boss_health -= 10
	invulnerable = true
	alarm[1] = 100
	image_alpha = 0.5
}
if(boss_health <= 0)
	instance_destroy()







