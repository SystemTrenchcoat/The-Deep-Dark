// Inherit the parent event
if (active_tentacle == noone)
{
	event_inherited();
	active_tentacle = instance_find(projectile, 0);
	show_debug_message(active_tentacle);
	invincible = true;
}

else
{
	if(active_tentacle != instance_find(projectile, 0))
	{
		active_tentacle = instance_find(projectile, 0);
		invincible = false;
	}
}