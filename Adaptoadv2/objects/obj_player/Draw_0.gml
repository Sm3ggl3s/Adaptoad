// apply shader
if(invulnerable) {
	shader_set(shader_damage)
	draw_self()
	shader_reset()
}
else {
	draw_self()
}