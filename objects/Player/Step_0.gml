//Code simplified using the 0 and 1 values provided by keyboard checks, 
//vertical and horizontal will be -1 0 or 1 depending on inputs
var vertical = ( keyboard_check(vk_down) || keyboard_check(ord("S"))) - 
			   ( keyboard_check(vk_up) || keyboard_check(ord("W")) );
var horizontal = ( keyboard_check(vk_right) || keyboard_check(ord("D"))) - 
				 ( keyboard_check(vk_left) || keyboard_check(ord("A")) );

//I switched movement to instead work by manipulating
//horizontal and vertical speed directly
hspeed += horizontal * moveSpeed
vspeed += vertical * moveSpeed

var current_speed = point_distance(0, 0, hspeed, vspeed)
if (current_speed > maxSpeed) {
    hspeed = (hspeed / current_speed) * maxSpeed
    vspeed = (vspeed / current_speed) * maxSpeed
}

if (speed > 0)
{
    friction = 0.005;
}
else
{
    friction = 0;
}

// Horizontal Collision
x += hspeed
if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) != 0 ||
    tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) != 0 ||
    tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) != 0 ||
    tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) != 0) {
    x -= hspeed
    // Step toward wall one pixel at a time
    var step_x = sign(hspeed);
    while (tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) == 0 &&
           tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) == 0 &&
           tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) == 0 &&
           tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) == 0) {
        x += step_x
    }
    x -= step_x;
    hspeed = 0
}

// Vertical Collision 
y += vspeed
if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) != 0 ||
    tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) != 0 ||
    tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) != 0 ||
    tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) != 0) {
    y -= vspeed
    var step_y = sign(vspeed);
    while (tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) == 0 &&
           tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) == 0 &&
           tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) == 0 &&
           tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) == 0) {
        y += step_y
    }
    y -= step_y;
    vspeed = 0
}
show_debug_message(speed)
event_inherited()

if (mouse_check_button_pressed(mb_left) && global.fired == false)
{
        instance_create_layer(x, y, "Instances", Harpoon_Projectile)
		global.fired = true
		global.returning = false
}


switch(hp)
{
	case 4: image_blend = c_aqua; break;
	case 2: image_blend = c_yellow; break;
	case 1: image_blend = c_red; break;
}

show_debug_message(string(hp));
