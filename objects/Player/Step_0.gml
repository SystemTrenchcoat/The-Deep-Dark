//Code simplified using the 0 and 1 values provided by keyboard checks, vertical and horizontal will be -1 0 or 1 depending on inputs
var vertical = ( keyboard_check(vk_down) || keyboard_check(ord("S")) ) - ( keyboard_check(vk_up) || keyboard_check(ord("W")) );
var horizontal = ( keyboard_check(vk_right) || keyboard_check(ord("D")) ) - ( keyboard_check(vk_left) || keyboard_check(ord("A")) );



//Will add downwards motion based on vertical and rightwards motion based on horizontal
motion_add(270, moveSpeed * vertical);
motion_add(0, moveSpeed * horizontal);

if (mouse_check_button_pressed(mb_left) && global.fired == false)
{
        instance_create_layer(x, y, "Instances", Harpoon_Projectile)
		global.fired = true
}
//I think we should use move_and_collide for MVI because we probably want to start with much simpler movement/
// easier to program collisions

//move_and_collide(8, 0, all);

//Old code
/*
if keyboard_check(vk_up )|| keyboard_check(vk_left) || keyboard_check(vk_down) || keyboard_check(vk_right)
{
	if keyboard_check(vk_right)
	{
		if keyboard_check(vk_up)
		{
			angle = 1;
		}
		
		else if keyboard_check(vk_down)
		{
			angle = 7;
		}
		
		else
		{
			angle = 0;
		}
	}
	
	else if keyboard_check(vk_up)
	{
		angle = 2;
	}
	
	else if keyboard_check(vk_left)
	{
		if keyboard_check(vk_up)
		{
			angle = 3;
		}
		
		else if keyboard_check(vk_down)
		{
			angle = 5;
		}
		
		else
		{
			angle = 4;
		}
	}
	
	else if keyboard_check(vk_down)
	{
		angle = 6;
	}
	
	motion_add(angle * 45, moveSpeed);
}
 */