
// You can write your code in this editor
//if distance_to_object(Player) > 75
//{
	//speed = 0
	//Harpoon_Projectile.alarm[0] = 30;
//}

if global.returning == true
{
	move_towards_point(Player.x, Player.y, 1)
}

if (place_meeting(x, y, Player) && global.returning = true)
{
	instance_destroy();
	global.returning = false
	global.fired = false
}