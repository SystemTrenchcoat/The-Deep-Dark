// Inherit the parent event
if (!invincible)
{
	show_debug_message(invincible)
		
	if (stun_timer > 0)
	{
		stun_timer -= global._dt;
		show_debug_message(stun_timer);
		sprite_index = stun_spr;
	}
	
	else
	{
		event_inherited();
		show_debug_message("else");
		invincible = true;
		sprite_index = neutral_spr;
	}
}

//else
//{
//	if(active_tentacle != instance_find(projectile, 0) && instance_find(projectile, 0) != instance_find(projectile, 200000))
//	{
//		event_inherited();
//		active_tentacle = instance_find(projectile, 0);
//		invincible = false;
//	}
//}