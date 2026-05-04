//Scale the sprite without changing the hitbox
xscale = oxyCurrent / oxyAmount;
yscale = oxyCurrent / oxyAmount;

//Destroy too small bubble and stop sound
if (oxyCurrent <= 0.2) {
    if (snd_oxygen_id != noone) {
        audio_stop_sound(snd_oxygen_id);
    }
    instance_destroy();
}

var touching_player = place_meeting(x, y, Player);

//Check that the sound instance we are stopping is our own after touching
if (touching_player) {
    if (snd_oxygen_id == noone || !audio_is_playing(snd_oxygen_id)) {
        snd_oxygen_id = audio_play_sound(oxygen_replenish, 1, true);
    }
} else {
    if (snd_oxygen_id != noone) {
        audio_stop_sound(snd_oxygen_id);
        snd_oxygen_id = noone;
    }
}