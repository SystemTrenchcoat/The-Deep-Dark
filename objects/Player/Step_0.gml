var moveSpeed = .1;
var angle = 0;

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
			angle = 5;
		}
		
		else if keyboard_check(vk_down)
		{
			angle = 3;
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