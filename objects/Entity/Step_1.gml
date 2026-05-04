
  
//show_debug_message(string_concat(damage_tag, ":", hp));

if (damage_state == damageState.damaged){
	hp -= 1;
    if(hp > 0){
        audio_sound_pitch(entity_hit_sound, random_range(0.9,1.1));
        audio_play_sound(entity_hit_sound, 5, false);
        hurt_effect_timer = 10;
    }
	damage_state = damageState.immune;
}

if(hp <= 0){
    //show_debug_message(string_concat(damage_tag, ":KILL"));
    //If anything other than player has player damage tag, problems will arise
    if(damage_tag == damageTag.player){
        audio_stop_sound(heavy_breathing);
        global.levelTrashCount = 0;
        global.totalTrashCount = 0;
        room_goto(YouDied);	
    }
    //Complete krill task
    else{
        global.krillKilled = true;
    }
    
    if (Sound_Manager.death_cooldown <= 0) {
        var inst = audio_play_sound(entity_death_sound, 1, false);
        audio_sound_pitch(inst, random_range(0.9, 1.1));
        audio_sound_gain(inst, 0.7, 0);
    
        Sound_Manager.death_cooldown = 1;
    }


    instance_destroy();
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
