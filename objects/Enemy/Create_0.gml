// Inherit the parent event
event_inherited();

////Timers for movement; takes 0.3-0.5 seconds to move, 1-3 seconds of waiting between each move
move_timer = irandom_range(move_lower,move_upper);
wait_timer = irandom_range(wait_lower,move_upper);