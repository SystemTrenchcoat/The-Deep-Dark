if (!place_meeting(x, y, Oxygen_Replenish)){
	oxy_timer--;
}

if(oxy_timer <= 0){
    hp -= 1 / 30;
    oxy_timer = 30;
}

//vertical and horizontal will be -1 0 or 1 depending on inputs
var vertical = ( keyboard_check(vk_down) || keyboard_check(ord("S"))) - 
			   ( keyboard_check(vk_up) || keyboard_check(ord("W")) );
var horizontal = ( keyboard_check(vk_right) || keyboard_check(ord("D"))) - 
				 ( keyboard_check(vk_left) || keyboard_check(ord("A")) );

if(vertical != 0 || horizontal != 0){
    global.playerHasMoved = true;
    if(horizontal > 0){
        sprite_index = DiverSwim_Right;
    }
    else if(horizontal < 0){
        sprite_index = DiverSwim_Left;
    }
    else if (vertical > 0){
        sprite_index = DiverIdle_Down;
    }
    else{
        sprite_index = DiverIdle_Up;
    }
    
}
else{
    sprite_index = DiverIdle_Up;
}
	



if (horizontal != 0)
{
    // Reset acceleration ramp if changing direction
    if (last_h != horizontal)
    {
        last_h = horizontal;
        accel_h_final = 0;
    }

    // Accelerate up to max
    accel_h_final += accel_h;
    if (accel_h_final > accel_h_max)
    {
        accel_h_final = accel_h_max;
    }
}
else
{
    // Decelerate back to 0 when no input
    accel_h_final -= accel_slow;
    if (accel_h_final < 0)
    {
        accel_h_final = 0;
        last_h = 0;
    }
}

if (vertical != 0)
{
    // Reset acceleration ramp if changing direction
    if (last_v != vertical)
    {
        last_v = vertical;
        accel_v_final = 0;
    }

    // Accelerate up to max
    accel_v_final += accel_v;
    if (accel_v_final > accel_v_max)
    {
        accel_v_final = accel_v_max;
    }
}
else
{
    // Decelerate back to 0 when no input
    accel_v_final -= accel_slow;
    if (accel_v_final < 0)
    {
        accel_v_final = 0;
        last_v = 0;
    }
}

// Apply movement
vsp = accel_v_final * last_v * moveSpeed;
hsp = accel_h_final * last_h * moveSpeed;

var spd = point_distance(0, 0, hsp, vsp);
var max_spd = moveSpeed * accel_h_max;

if (spd > max_spd)
{
    var dir = point_direction(0, 0, hsp, vsp);
    hsp = lengthdir_x(max_spd, dir);
    vsp = lengthdir_y(max_spd, dir);
}

move_and_collide(hsp, vsp, tilemap);


if (mouse_check_button_pressed(mb_left) && global.fired == false)
{
        instance_create_layer(x, y, "Instances", Harpoon_Projectile);
		global.fired = true;
		global.returning = false;
        audio_sound_pitch(harpoon_fire, random_range(0.9, 1.1))
        audio_play_sound(harpoon_fire, 3, false);
        global.harpoonFired = true;
    
}



//Since max hp can change can't be switch case
if(hp >= max_hp * (2/3)){
    image_blend = c_white;
}
else if(hp >= max_hp / 3){
    image_blend = c_yellow;
}
else{
    image_blend = c_red;
}

//show_debug_message(string(hp));

if(hp < 1.5){
    audio_sound_gain(low_health_inst, 0.5 - (hp / 3), 0);
}
else{
    audio_sound_gain(low_health_inst, 0, 0);
}
