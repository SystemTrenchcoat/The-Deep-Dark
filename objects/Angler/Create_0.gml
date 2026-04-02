// Inherit the parent event
event_inherited();

light_enabled = true;
light_radius  = 10;   
light_alpha   = 0.8;   
light_color   = make_colour_rgb(255, 231, 166);
light_offsetx = 15;
light_offsety = -15;

////Timers for movement; takes 0.3-0.5 seconds to move, 1-3 seconds of waiting between each move
move_timer = irandom_range(move_lower,move_upper);
wait_timer = irandom_range(wait_lower,move_upper);