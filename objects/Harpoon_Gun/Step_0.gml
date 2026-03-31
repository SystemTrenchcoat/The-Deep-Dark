/// @description follow Mouse & Player
// You can write your code in this editor

//Light modifiers
light_enabled = true;
light_radius  = 40;   
light_alpha   = 0.8;   
light_color   = c_white;

self.x = Player.x
self.y = Player.y - 3;
self.image_angle = point_direction(x,y,mouse_x,mouse_y);