if(point_distance(instance_find(Player, 0).x, x,instance_find(Player, 0).y, y) <= activeDist)
{
	if (stun_timer > 0)
	{
		stun_timer -= global._dt;
		//show_debug_message(stun_timer);
		sprite_index = stun_spr;
	}
   
	else
	{
		event_inherited();
		//show_debug_message("else");
		invincible = true;
		sprite_index = neutral_spr;
	}
}

//else
//{
//	event_inherited();
//}

//else
//{
//	if(active_tentacle != instance_find(projectile, 0) && instance_find(projectile, 0) != instance_find(projectile, 200000))
//	{
//		event_inherited();
//		active_tentacle = instance_find(projectile, 0);
//		invincible = false;
//	}
//}