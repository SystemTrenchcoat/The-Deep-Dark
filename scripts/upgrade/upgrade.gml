//Script for when an upgrade is selected
function upgrade(upgrade_type){
    
    //Upgrade selected by the enum the button that was pressed had
    switch(upgrade_type)
    {
        case upgradeType.health:
            global.healthUpgrade = true;
            break;
    
        case upgradeType.player_speed:
            global.playerSpeedUpgrade = true;
            break;
    
        case upgradeType.harpoon_speed:
            global.harpoonSpeedUpgrade = true;
            break;
    }
    
    //Go to the next level (this variable is updated by the diving bell)
    room_goto(global.next_level);
    
    //Reset trash collected
    global.trash_count = 0;

    
}