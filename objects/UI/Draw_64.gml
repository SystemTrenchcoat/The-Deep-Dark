//Draw trash collected with quota
draw_set_color(c_white);
draw_set_font(Arial24);
draw_text(32, 32, "Trash: " + string(global.trash_count) + "/" + string(global.quota));