
  
//show_debug_message(string_concat(damage_tag, ":", hp));

if (damage_state == damageState.damaged){
	hp -= 1;
    if(damage_tag == damageTag.player){
        audio_sound_pitch(player_hit, random_range(0.9,1.1));
        audio_play_sound(player_hit, 5, false);
    }
	//show_debug_message(string_concat(damage_tag, ":", hp));
	if(hp <= 0){
		//show_debug_message(string_concat(damage_tag, ":KILL"));
		//If anything other than player has player damage tag, problems will arise
		if(damage_tag == damageTag.player){
			room_goto(Main_Menu);
            global.trash_count = 0;
        }
        //Play death sound if not player
        else{
            audio_sound_pitch(enemy_death, random_range(0.9, 1.1));
            audio_play_sound(enemy_death, 1, false);
            global.krillKilled = true;
        }

		instance_destroy();
	}
	damage_state = damageState.immune;
}

if (damage_state == damageState.immune) {
	damageTimer -= global._dt;
	//show_debug_message(string_concat(damage_tag, ":", damageTimer));
}

if (damageTimer <= 0){
	//show_debug_message("RESET");
	damageTimer = damageCooldown;
	damage_state = damageState.neutral;
}