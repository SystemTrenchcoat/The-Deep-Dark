shadow_timer += global._dt;

//show_debug_message(sprite_index);
//show_debug_message(sprite_get_number(spawn_spr));

if (shadow_timer >= shadow_const + .3)
{
	sprite_index = swaying_spr;
	neutral = false;
	spawned = true;
}
else if (shadow_timer >= shadow_const)
{
	sprite_index = spawn_spr;
	neutral = false;
}