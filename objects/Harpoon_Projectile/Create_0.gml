// You can write your code in this editor
speed = 10;
direction = point_direction(x,y,mouse_x,mouse_y);
self.image_angle = point_direction(x,y,mouse_x,mouse_y);

//following alarms tell the projectile time out stopping and returning wait times
//may be best to do this some other way, or figure out how not to tie this to frames
Harpoon_Projectile.alarm[0] = 12;
Harpoon_Projectile.alarm[1] = 60;

//move a certain distance
//stop
//move back to player at a certain pace