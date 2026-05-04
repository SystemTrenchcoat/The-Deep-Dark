function stun(boss, condition){
	
	if (condition && boss.stun_timer <= 0)
	{
		//invincible = false;
		boss.stun_timer = boss.stun_const;
		boss.attack_timer = 0;
		boss.invincible = false;
	}
}