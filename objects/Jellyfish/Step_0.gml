// Inherit the parent event
event_inherited();
 attack_timer--;
//Check if currently moving
if (attack_timer <= 0)  {
    //When timer reaches 0, reset timer and set moving to false
    if (zap) {
		image_blend = c_yellow;
		damage_tag = damageTag.enemy;
    }
	else{
		image_blend = c_white;
		damage_tag = damageTag.none;
	}
	
	zap = !zap;
	
	 attack_timer = irandom_range(attack_lower,attack_upper);
} 