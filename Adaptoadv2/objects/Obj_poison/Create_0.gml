if(global.counter == 0){
	direction = point_direction(x, y, x + 3, y)
	global.counter = 1
}
else if(global.counter == 1){
	direction = point_direction(x, y, x + 8, y+2)
	global.counter = 2
}
else if(global.counter == 2){
	direction = point_direction(x, y, x + 8, y + 3)
	global.counter = 0
}
speed = 3
alarm[0] = 200








