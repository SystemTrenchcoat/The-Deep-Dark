//Draw trash collected with quota
draw_set_color(c_white);
draw_set_font(Pixels24);

//Construct the string and choose padding
var trash_txt = "Trash: " + string(global.trashCount)
var pad = 24;
var quota_txt = Task_Manager.GetCurrentTaskName();

//Use this to draw text in bottom/right quadrants
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var txt_w = string_width(trash_txt);
var txt_h = string_height(trash_txt);

//Put trash counter in bottom right
var x_pos = gui_w - txt_w - pad;
var y_pos = gui_h - txt_h - pad;

draw_text(x_pos, pad, trash_txt);


//Get the current and max hp values for healthbar drawing
var hp_frames = get_healthbar_frames(Player.hp, Player.max_hp);

//Width of each healthbar segment
var seg_w = 32;

for (var i = 0; i < array_length(hp_frames); i++)
{
    draw_sprite_ext(
    Oxy_Bar,
    hp_frames[i],
    pad + i * seg_w,
    y_pos,
    2, 2,     // use to change scale of healthbar
    0,        
    c_white,  
    1         
    );
}

if(!Task_Manager.taskComplete){
    draw_text(pad, pad, "Quota:");
    draw_text(pad + 100, pad, quota_txt);
}
else{
    draw_text(pad, pad, "Quota:");
    draw_set_color(c_lime);
    draw_text(pad + 100, pad, quota_txt);
    draw_set_color(c_white);
}