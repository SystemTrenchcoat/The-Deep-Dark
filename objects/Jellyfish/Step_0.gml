// Inherit the parent event
event_inherited();
 attack_timer--;
//Check if currently moving
if (attack_timer <= 0)  {
    //When timer reaches 0, reset timer and set moving to false
    if (zap) {
		sprite_index = zap_sprite;
		damage_tag = damageTag.enemy;
    }
	else{
		sprite_index = neutral_sprite;
		damage_tag = damageTag.none;
	}
	
	zap = !zap;
	
	 attack_timer = irandom_range(attack_lower,attack_upper);
} 