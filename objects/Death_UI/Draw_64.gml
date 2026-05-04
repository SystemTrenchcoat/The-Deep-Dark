//Draw you died text
draw_set_color(c_red);
draw_set_font(Bitrimus60);

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var header_txt = "YOU DIED!";
var warning_txt = "(All Progress will be lost.)"

draw_set_halign(fa_center);
draw_text(gui_w * 0.5, 50, header_txt);

draw_set_colour(make_color_rgb(255, 128, 140));
draw_set_font(Pixels16);
draw_text(gui_w * 0.5, gui_h - 50, warning_txt);

draw_set_halign(fa_left);