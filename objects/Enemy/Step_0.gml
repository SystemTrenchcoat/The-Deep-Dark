//show_debug_message("Enemy");
//Check if currently moving
if (moving)  {
    //Move and tick down the timer
   event_inherited();

	if(move_x > 0)
		image_xscale = -1;
	else
		image_xscale = 1;

	move_timer -= global._dt;

    //When timer reaches 0, reset timer and set moving to false
    if (move_timer <= 0) {
        move_timer = irandom_range(move_lower,move_upper);
        moving = false;
    }
} 
else  {
    //Tick down timer between movement
    wait_timer -= global._dt;

    //When done waiting, choose random speeds in both directions, set to moving and choose random time to wait after moving
    if (wait_timer <= 0) {
        move_x = random_range(x_lower, x_upper);
        move_y = random_range(y_lower, y_upper);
        wait_timer = irandom_range(wait_lower, wait_upper);
        moving = true;
    }
}