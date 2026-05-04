//var octopus = instance_find(Octopus,0);
show_debug_message(string_concat("Octo: ", octopus));
if (octopus != noone)
{
	octopus.alarm[0] = 1;
	//stun(octopus, instance_number(boss.projectile) - 1 == 0);
}
//octopus.invincible = false;
//octopus.stun_timer = octopus.stun_const;