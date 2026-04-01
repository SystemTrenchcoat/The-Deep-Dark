//Check if currently moving
if (moving)  {
    //Move and tick down the timer
	move_and_collide(move_x, move_y, tilemap, 4, 0, 0, 1, 1);

	if(move_x > 0)
		image_xscale = -1;
	else
		image_xscale = 1;

	move_timer--;

    //When timer reaches 0, reset timer and set moving to false
    if (move_timer <= 0) {
        move_timer = irandom_range(move_lower,move_upper);
        moving = false;
    }
} 
else  {
    //Tick down timer between movement
    wait_timer--;

    //When done waiting, utilizes upper for moving "forward" or lower for moving "backward" (forward first), set to moving and choose random time to wait after moving, also sets forward to its opposite
    if (wait_timer <= 0) {
		//x = condition ? value_if_true : value_if_false
        move_x = forward ? x_upper : x_lower;
        move_y = forward ? y_upper : y_lower;
        wait_timer = irandom_range(wait_lower, wait_upper);
		forward = !forward;
        moving = true;
    }
}