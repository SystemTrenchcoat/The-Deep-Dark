
playerX = instance_find(Player, 0).x
playerY = instance_find(Player, 0).y
playerDist = sqrt( sqr(playerX - x) + sqr((playerY - y) ))
show_debug_message(string_concat(playerDist, " playerDist!"));
//if in some proximity to the player
var move_x = lengthdir_x(0.9, self.image_angle);
var move_y = lengthdir_y(0.9, self.image_angle);
if (playerDist <= 90)  {
	
	//bum rush em
	self.image_angle = point_direction(x,y,playerX,playerY);
	self.image_xscale = -1
	self.image_yscale = -1
	if(self.image_angle > 180){
		show_debug_message(string_concat(self.image_angle, " image angle!"));
		//self.image_yscale = -1
	}
	
	direction = self.image_angle
	movspeed = 0.9
	move_and_collide(move_x, move_y, tilemap)
	
	
} 
else  {
	
	direction = self.image_angle
	speed = 0
	if (moving)  {
    //Move and tick down the timer
	event_inherited();

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

    //When done waiting, choose random speeds in both directions, set to moving and choose random time to wait after moving
    if (wait_timer <= 0) {
		xDist = instance_find(Player, 0).x - x + random_range(x_lower, x_upper);
		xDist = abs(xDist) > x_upper * 2 ? xDist * .01 : xDist;
		
		yDist = instance_find(Player, 0).y - y + random_range(y_lower, y_upper);
		yDist = abs(yDist) > y_upper * 2 ? yDist * .01 : yDist;
		
        move_x = xDist;
        move_y = yDist;
		
        wait_timer = irandom_range(wait_lower, wait_upper);
        moving = true;
		}
	}
	
}