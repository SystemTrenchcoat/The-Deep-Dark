
//show_debug_message(string_concat(damageTag, ":", hp));

if (damaged){
	damageTimer -= .000001;
	damaged = false;
}

if (damageTimer < damageCooldown) {
	damageTimer -= delta_time;
}

if (damageTimer <= 0){
	damageTimer = damageCooldown;
}