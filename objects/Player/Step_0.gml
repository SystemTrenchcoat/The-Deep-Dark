//Code simplified using the 0 and 1 values provided by keyboard checks, vertical and horizontal will be -1 0 or 1 depending on inputs
var vertical = ( keyboard_check(vk_down) || keyboard_check(ord("S")) ) - ( keyboard_check(vk_up) || keyboard_check(ord("W")) );
var horizontal = ( keyboard_check(vk_right) || keyboard_check(ord("D")) ) - ( keyboard_check(vk_left) || keyboard_check(ord("A")) );

//Old movement
//motion_add(270, moveSpeed * vertical);
//motion_add(0, moveSpeed * horizontal);

//Structure for move and collide to allow collisions with wall; make sure this is done after calculating speed with acceleration
move_and_collide(horizontal * moveSpeed, vertical * moveSpeed, tilemap)

if (mouse_check_button_pressed(mb_left) && global.fired == false)
{
        instance_create_layer(x, y, "Instances", Harpoon_Projectile)
		global.fired = true
}
