//Refill player's oxygen at the rate decided
if Player.hp < Player.max_hp{
    if(!audio_is_playing(oxygen_replenish)){
        snd_handle = audio_play_sound(oxygen_replenish, 1, true);
    }
	Player.hp += oxyRate
    //Comment this part out if you don't want the bubble to decrease in size
    oxyCurrent -= oxyRate;
    global.bubbleTouched = true;
}
else{
    audio_stop_sound(oxygen_replenish);
}

if(audio_is_playing(oxygen_replenish)){
    audio_sound_pitch(snd_handle, 0.5 + (Player.hp / Player.max_hp));
}
