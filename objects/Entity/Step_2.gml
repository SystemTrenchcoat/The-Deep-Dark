//Code simplified using the 0 and 1 values provided by keyboard checks, vertical and horizontal will be -1 0 or 1 depending on inputs
var vertical = ( keyboard_check(vk_down) || keyboard_check(ord("S")) ) - ( keyboard_check(vk_up) || keyboard_check(ord("W")) );
var horizontal = ( keyboard_check(vk_right) || keyboard_check(ord("D")) ) - ( keyboard_check(vk_left) || keyboard_check(ord("A")) );

//Old movement
//motion_add(270, moveSpeed * vertical);
//motion_add(0, moveSpeed * horizontal);

//Structure for move and collide to allow collisions with wall; make sure this is done after calculating speed with acceleration
move_and_collide(horizontal * moveSpeed, vertical * moveSpeed, tilemap)

//Check if currently moving
if (moving)  {
    //Move and tick down the timer
    move_and_collide(move_x, move_y, tilemap);
    move_timer--;

    //When timer reaches 0, reset timer and set moving to false
    if (move_timer <= 0) {
        move_timer = irandom_range(20,30);
        moving = false;
    }
} 
else  {
    //Tick down timer between movement
    wait_timer--;

    //When done waiting, choose random speeds in both directions, set to moving and choose random time to wait after moving
    if (wait_timer <= 0) {
        move_x = random_range(-2.0, 2.0);
        move_y = random_range(-2.0, 2.0);
        wait_timer = irandom_range(60, 180);
        moving = true;
    }
}