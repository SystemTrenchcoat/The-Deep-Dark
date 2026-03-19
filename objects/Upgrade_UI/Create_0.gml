//This object will control the drawing/updating of UI elements in the upgrade shop



if(array_length(global.upgrades) == 0){
    array_push(global.upgrades, new UpgradeButton("Harpoon Range", 4, Upgrade_HarpoonSpeed, "Increase harpoon range", upgradeType.harpoon_range));
    array_push(global.upgrades, new UpgradeButton("Speed", 4, Upgrade_PlayerSpeed, "Move faster underwater", upgradeType.player_speed));
    array_push(global.upgrades, new UpgradeButton("Health", 4, Upgrade_Oxygen, "Increase max health", upgradeType.player_health)); 
}



//These tell us which upgrade is currently being hovered over, and if clicked, will update the pressed upgrade var
hovered_upgrade = -1;
pressed_upgrade = -1;

//layout settings
button_scale = 2.5;
icon_scale = 2.0;
button_size = 64 * button_scale;
button_gap = 32;
button_y = 260;