//Base sprite size
var sw = sprite_get_width(sprite_index);
var sh = sprite_get_height(sprite_index);

//Apply instance scale
var sx = abs(image_xscale);
var sy = abs(image_yscale);

var bw = sw * sx;
var bh = sh * sy;

//Align to scaled origin
var left = x - sprite_xoffset * sx;
var top  = y - sprite_yoffset * sy;

//Draw default button if not using sprite for this button
if(!use_sprite)
{
   //Draw button box (debug / placeholder)
    draw_set_color(hover ? c_yellow : c_white);
    draw_rectangle(left, top, left + bw, top + bh, false);
    
    //Centered label
    draw_set_font(font);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    draw_set_color(c_black);
    draw_text(left + bw * 0.5, top + bh * 0.5, label);
    
    //Reset alignment
    draw_set_halign(fa_left);
    draw_set_valign(fa_top); 
}
