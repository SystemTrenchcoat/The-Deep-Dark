//Draw upgrade shop title centered
draw_set_color(c_white);
draw_set_font(Bitrimus60);

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var header_txt = "UPGRADE SHOP";

draw_set_halign(fa_center);
draw_text(gui_w * 0.5, 50, header_txt);
draw_set_halign(fa_left);

// Draw upgrade buttons
draw_set_font(Pixels24);

for (var i = 0; i < array_length(global.upgrades); i++)
{
    var current_upgrade = global.upgrades[i];
    
    // Draw base panel (assumes top-left origin)
    draw_sprite_ext(
        UpgradePanel_base,
        0,
        current_upgrade.x,
        current_upgrade.y,
        button_scale,
        button_scale,
        0,
        c_white,
        1
    );
    
    // Draw icon centered
    var icon_x = current_upgrade.x + current_upgrade.w * 0.5;
    var icon_y = current_upgrade.y + current_upgrade.h * 0.5;
    
    draw_sprite_ext(
        current_upgrade.sprite,
        0,
        icon_x,
        icon_y,
        icon_scale,
        icon_scale,
        0,
        c_white,
        1
    );
    
    // Title
    draw_set_halign(fa_center);
    draw_text(
        current_upgrade.x + current_upgrade.w * 0.5,
        current_upgrade.y + current_upgrade.h + 12,
        current_upgrade.title
    );
    
    // Cost
    if(current_upgrade.cost <= global.totalTrashCount){
        draw_text(
            current_upgrade.x + current_upgrade.w * 0.5,
            current_upgrade.y + current_upgrade.h + 36,
            "Cost: " + string(current_upgrade.cost)
        );
    }
    //Change cost color to red if not enough trash
    else{
        draw_set_colour(make_color_rgb(255, 128, 140));
        draw_text(
            current_upgrade.x + current_upgrade.w * 0.5,
            current_upgrade.y + current_upgrade.h + 36,
            "Cost: " + string(current_upgrade.cost)
        );
        draw_set_colour(c_white);
    }

    
    // Level
    draw_text(
        current_upgrade.x + current_upgrade.w * 0.5,
        current_upgrade.y + current_upgrade.h + 60,
        "Lv. " + string(current_upgrade.lvl)
    );
    
    draw_set_halign(fa_left);
    
    // Hover highlight
    if (i == hovered_upgrade)
    {
        draw_set_alpha(0.25);
        draw_rectangle(
            current_upgrade.x,
            current_upgrade.y,
            current_upgrade.x + current_upgrade.w,
            current_upgrade.y + current_upgrade.h,
            false
        );
        draw_set_alpha(1);
    }
}

//Construct the string and choose padding
var trash_txt = "Trash: " + string(global.totalTrashCount)
var pad = 24;

var txt_w = string_width(trash_txt);
var txt_h = string_height(trash_txt);

//Put trash counter in top right
var x_pos = gui_w - txt_w - pad;
var y_pos = gui_h - txt_h - pad;

draw_text(x_pos, pad, trash_txt);