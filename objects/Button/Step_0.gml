//GUI mouse position
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

//Base sprite size
var sw = sprite_get_width(sprite_index);
var sh = sprite_get_height(sprite_index);

//Apply instance scale 
var sx = abs(image_xscale);
var sy = abs(image_yscale);

var bw = sw * sx;
var bh = sh * sy;

//Align bounds to sprite origin
var left = x - sprite_xoffset * sx;
var top  = y - sprite_yoffset * sy;

hover = point_in_rectangle(mx, my, left, top, left + bw, top + bh);

if (hover && mouse_check_button_pressed(mb_left)) {
    run_action();
}