
  
show_debug_message(string_concat(damage_tag, ":", hp));

if (damage_state == damageState.damaged){
	hp -= 1;
	show_debug_message(string_concat(damage_tag, ":", hp));
	if(hp <= 0){
		show_debug_message(string_concat(damage_tag, ":KILL"));
		//If anything other than player has player damage tag, problems will arise
		if(damage_tag == damageTag.player)
			room_goto(Main_Menu);
		instance_destroy();
	}
	damage_state = damageState.immune;
}

if (damage_state == damageState.immune) {
	damageTimer -= global._dt;
	show_debug_message(string_concat(damage_tag, ":", damageTimer));
}

if (damageTimer <= 0){
	show_debug_message("RESET");
	damageTimer = damageCooldown;
	damage_state = damageState.neutral;
}