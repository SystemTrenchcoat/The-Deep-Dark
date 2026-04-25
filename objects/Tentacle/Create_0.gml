// Inherit the parent event
event_inherited();
//show_debug_message("AAAAAAA");
x = instance_find(Player, 0).x + random_range(-x_upper, x_upper);
y = instance_find(Player, 0).y + random_range(-y_upper, y_upper);

var lay_id = layer_get_id("Tiles_Bg");
var map_id = layer_tilemap_get_id(lay_id);

while(tilemap_get_at_pixel(map_id, x, y) < -1)
{
	x = instance_find(Player, 0).x + random_range(-x_upper, x_upper);
	y = instance_find(Player, 0).y + random_range(-y_upper, y_upper);
}