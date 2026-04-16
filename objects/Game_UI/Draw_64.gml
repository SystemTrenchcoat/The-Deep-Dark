//Draw trash collected with quota
draw_set_color(c_white);
draw_set_font(Pixels24);

//Construct the string and choose padding
var trash_txt = "Trash: " + string(global.totalTrashCount)
var pad = 24;
var quota_txt = Task_Manager.GetCurrentTaskName();

//Use this to draw text in bottom/right quadrants
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var txt_w = string_width(trash_txt);
var txt_h = string_height(trash_txt);

//Put trash counter in top right
var x_pos = gui_w - txt_w - pad;
var y_pos = gui_h - txt_h - pad;

draw_text(x_pos, pad, trash_txt);


//Get the current and max hp values for healthbar drawing
var seg_w = 32;
var hp_frames = get_healthbar_frames(Player.hp, Player.max_hp);

//30 is the space for the two edge pieces, 32 is for each of the new segments
var hp_width = (30 + (32 * ((Player.max_hp)- 2))) * (Player.hp / Player.max_hp);

draw_set_color(Player.hp < Player.max_hp / 2.8 ? c_red : c_aqua);

//Draw underneath the health bar sprite segments
draw_rectangle(39, 725, 39 + hp_width , 735, false);

draw_set_color(c_white);


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