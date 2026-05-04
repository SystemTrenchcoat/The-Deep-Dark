if (instance_number(projectile) - 1 < 0 && stun_timer <= 0)
{
	//invincible = false;
	stun_timer = stun_const;
	attack_timer = 0;
	invincible = false;
}