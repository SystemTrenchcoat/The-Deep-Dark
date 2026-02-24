//Step is entirely to determine if the button is hovered, and then clicked upon
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

//Check if mouse is within bounds
hover = point_in_rectangle(mx, my, x, y, x + w, y + h);

if (hover && mouse_check_button_pressed(mb_left))
{
    run_action();
}