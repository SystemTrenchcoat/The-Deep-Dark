//Get gui draw calcs
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

hovered_upgrade = -1;

// Layout calculations
var count = array_length(global.upgrades);
var total_w = count * button_size + (count - 1) * button_gap;
var start_x = (gui_w - total_w) * 0.5;

//Calculate if mouse is in any upgrade boxes
for (var i = 0; i < count; i++)
{
    var current_upgrade = global.upgrades[i];
    
    current_upgrade.x = start_x + i * (button_size + button_gap);
    current_upgrade.y = button_y;
    current_upgrade.w = button_size;
    current_upgrade.h = button_size;
    
    if (point_in_rectangle(
        mx, my,
        current_upgrade.x,
        current_upgrade.y,
        current_upgrade.x + current_upgrade.w,
        current_upgrade.y + current_upgrade.h))
    {
        hovered_upgrade = i;
    }
}

if(hovered_upgrade > -1 && last_upgrade_hover != hovered_upgrade){
    var inst = audio_play_sound(button_hover, 1, false);
    audio_sound_pitch(inst, random_range(0.96, 1.04));
    last_upgrade_hover = hovered_upgrade;
}

// Click handling
pressed_upgrade = -1;

if (hovered_upgrade != -1 && mouse_check_button_pressed(mb_left))
{
    if(global.upgrades[hovered_upgrade].cost <= global.totalTrashCount){
        upgrade(global.upgrades[hovered_upgrade].upgrade_id);
        global.totalTrashCount -= global.upgrades[hovered_upgrade].cost;
        global.upgrades[hovered_upgrade].cost += 2;
        global.upgrades[hovered_upgrade].lvl++;
        audio_play_sound(upgrade_bought, 5, false);
    }
    else{
        audio_play_sound(cant_buy, 5, false);
    }
}
