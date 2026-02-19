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