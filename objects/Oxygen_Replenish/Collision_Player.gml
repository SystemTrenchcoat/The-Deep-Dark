//Refill player's oxygen at the rate decided
if Player.hp < Player.max_hp{
	Player.hp += oxyRate
    if(limited_oxy) oxyCurrent -= oxyRate; 
    global.bubbleTouched = true;
}


if(audio_is_playing(oxygen_replenish)){
    audio_sound_pitch(snd_oxygen_id, 0.5 + (Player.hp / Player.max_hp));
}

show_debug_message(audio_is_playing(oxygen_replenish));