// Inherit the parent event
event_inherited();
 attack_timer -= global._dt;
//Check if currently moving
if (attack_timer <= 0)  {
    //When timer reaches 0, reset timer and set moving to false
    if (zap) {
		sprite_index = zap_sprite;
		neutral = false;
        light_enabled = true;
    }
	else{
		sprite_index = neutral_sprite;
		neutral = true;
        light_enabled = false;
	}
	
	zap = !zap;
	
	 attack_timer = irandom_range(attack_lower,attack_upper);
} 