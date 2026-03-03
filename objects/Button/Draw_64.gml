//Draw buttons with chosen width and font, and yellow hover effect
draw_set_color(hover ? c_yellow : c_white);
draw_set_font(font);
draw_rectangle(x, y, x+w, y+h, false);
draw_set_color(c_black);
draw_text(x + 70, y + 2, label);