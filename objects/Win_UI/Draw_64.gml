//Draw you died text
draw_set_color(c_lime);
draw_set_font(Bitrimus60);

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var header_txt = "YOU WIN!";
var extra_txt = "You made it to safety after collecting " + string(global.finalTrashCount) + " trash! Thanks for playing!";


draw_set_halign(fa_center);
draw_text(gui_w * 0.5, 50, header_txt);

draw_set_colour(c_white);
draw_set_font(Pixels24);
draw_text(gui_w * 0.5, 200, extra_txt);

draw_set_halign(fa_left);