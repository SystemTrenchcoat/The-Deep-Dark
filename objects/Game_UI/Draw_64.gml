//Draw trash collected with quota
draw_set_color(c_white);
draw_set_font(Pixels24);

//Construct the string and choose padding
var trash_txt = "Trash: " + string(global.trash_count) + "/" + string(global.quota);
var health_txt = "Health: " + string(Player.hp);
var pad = 24;

//Use this to draw text in bottom/right quadrants
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var txt_w = string_width(trash_txt);
var txt_h = string_height(trash_txt);

//Put trash counter in bottom right
var x_pos = gui_w - txt_w - pad;
var y_pos = gui_h - txt_h - pad;

draw_text(x_pos, y_pos, trash_txt);
draw_text(pad, pad, health_txt)