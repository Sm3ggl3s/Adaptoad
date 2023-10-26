speed = projectile_speed
if(global.counter == 0){
	direction = point_direction(x, y, x + 4, y + 1)
	global.counter = 1
}
else if(global.counter == 1){
	direction = point_direction(x, y, x + 4, y)
	global.counter = 2
}
else if(global.counter == 2){
	direction = point_direction(x, y, x + 4, y - 1)
	global.counter = 0
}
