// Inherit the parent event
if (active_tentacle == instance_find(projectile, 20000))
{
	event_inherited();
	active_tentacle = instance_find(projectile, 0);
	show_debug_message(active_tentacle);
	invincible = true;
}

else
{
	if(active_tentacle != instance_find(projectile, 0) && instance_find(projectile, 0) != instance_find(projectile, 200000))
	{
		event_inherited();
		active_tentacle = instance_find(projectile, 0);
		invincible = false;
	}
}