


// You can write your code in this editor
if (distance_to_object(Player) > 35 + global.harpoonRangeUpgrade)
{
	speed = lerp(speed, 0.5, 0.15);
	global.returning = true
	//Harpoon_Projectile.alarm[0] = 30;
}

//Have harpoon return/play sound upon hitting wall
if(tilemap_get_at_pixel(tilemap_id, x, y) != 0 || (place_meeting(x, y, Octopus) && Octopus.invincible)){
    global.returning = true
    harpoon_buffer = 0;
    if(!hit_check){
        audio_sound_pitch(hit_wall, random_range(0.9, 1.1))
        audio_play_sound(hit_wall, 3, false);
        hit_check = true;
    }
}

if global.returning == true
{
    //Check if we can start going backwards yet
    if harpoon_buffer <= 0{
        return_speed = return_speed + 0.05;
        move_towards_point(Player.x, Player.y, return_speed);
        if(!audio_is_playing(chain_returning)){
           audio_play_sound(chain_returning, 3, false) 
        }
    }
	else
        harpoon_buffer--;
    
}

if (place_meeting(x, y, Player) && global.returning = true)
{
	instance_destroy();
    audio_stop_sound(chain_returning);
	global.returning = false;
	global.fired = false;
    harpoon_buffer = 15;
    return_speed = 0.5;
}

//Don't pierce enemies that have more than 1 hp
if (place_meeting(x, y, Enemy) && Enemy.hp > 1){
    global.returning = true
    harpoon_buffer = 0;
}