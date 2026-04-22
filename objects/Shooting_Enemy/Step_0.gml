// Inherit the parent event
event_inherited();
//show_debug_message(string_concat("ATK TMR",attack_timer))
attack_timer -= global._dt;
//Check if currently moving
if (attack_timer <= 0)  {
    //When timer reaches 0, reset timer and set moving to false
	for(i = 0; i < attacks; i++)
	     instance_create_layer(x, y, "Instances", projectile);
	
	//show_debug_message("SHOOT");
	 attack_timer = irandom_range(attack_lower,attack_upper);
} 