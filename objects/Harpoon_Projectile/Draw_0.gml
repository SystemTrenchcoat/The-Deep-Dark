//Draw the line between projectile and gun
image_angle = point_direction(x, y, Player.x, Player.y) + 180;
draw_self();
draw_set_color(make_color_rgb(130, 85, 55));

var dist = 12;

var gx = Harpoon_Gun.x + lengthdir_x(dist, Harpoon_Gun.image_angle);
var gy = Harpoon_Gun.y + lengthdir_y(dist, Harpoon_Gun.image_angle);

draw_line_width(x, y, gx, gy, 0.75);

