//Scale the sprite without changing the hitbox
xscale = oxyCurrent / oxyAmount;
yscale = oxyCurrent / oxyAmount;
if (oxyCurrent <= 0.2)
    instance_destroy();

if(!place_meeting(x, y, Player))
    audio_stop_sound(oxygen_replenish);