
// You can write your code in this editor
if distance_to_object(Player) > 35
{
	speed = lerp(speed, 0.5, 0.15);
	global.returning = true
	//Harpoon_Projectile.alarm[0] = 30;
}

if global.returning == true
{
    //Check if we can start going backwards yet
    if harpoon_buffer <= 0{
        return_speed = lerp(return_speed, 3.5, 0.05);
        move_towards_point(Player.x, Player.y, return_speed);
    }
	else
        harpoon_buffer--;
    
}

if (place_meeting(x, y, Player) && global.returning = true)
{
	instance_destroy();
	global.returning = false
	global.fired = false
    harpoon_buffer = 15;
    return_speed = 0.5;
}