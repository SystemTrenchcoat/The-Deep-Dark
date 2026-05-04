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
        move_x = random_range(x_lower, x_upper);
        move_y = random_range(y_lower, y_upper);
        wait_timer = irandom_range(wait_lower, wait_upper);
        moving = true;
    }
}
 attack_timer -= global._dt;
//Check if currently moving
if (attack_timer <= 0)  {
    //When timer reaches 0, reset timer and set moving to false
    if (zap) {
		sprite_index = zap_sprite;
		neutral = false;
        light_enabled = true;
    }
	else{
		sprite_index = neutral_sprite;
		neutral = true;
        light_enabled = false;
	}
	
	zap = !zap;
	
	 attack_timer = irandom_range(attack_lower,attack_upper);
} 