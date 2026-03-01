//Code simplified using the 0 and 1 values provided by keyboard checks, 
//vertical and horizontal will be -1 0 or 1 depending on inputs
var vertical = ( keyboard_check(vk_down) || keyboard_check(ord("S"))) - 
			   ( keyboard_check(vk_up) || keyboard_check(ord("W")) );
var horizontal = ( keyboard_check(vk_right) || keyboard_check(ord("D"))) - 
				 ( keyboard_check(vk_left) || keyboard_check(ord("A")) );

motion_add(270, moveSpeed * vertical);
motion_add(0, moveSpeed * horizontal);

move_x = vertical * moveSpeed;
move_y = horizontal * moveSpeed;

event_inherited();
//move_and_collide(move_x, move_y, tilemap)

if(speed > maxSpeed){
	motion_set(direction, maxSpeed)
}

if (speed > 0)
{
    friction = 0.005;
}
else
{
    friction = 0;
}

show_debug_message(speed)

if(place_meeting(x - 5, y, tilemap)){
	//motion_set((direction * -1), maxSpeed)
	show_debug_message("colliding on left!")
	
}


if (mouse_check_button_pressed(mb_left) && global.fired == false)
{
        instance_create_layer(x, y, "Instances", Harpoon_Projectile)
		global.fired = true
}
