//Script for when an upgrade is selected
function upgrade(upgrade_type){
    
    //Upgrade selected by the enum the button that was pressed had
    switch(upgrade_type)
    {
        case upgradeType.player_health:
            global.healthUpgrade += global.oneHealthSegment;
            break;
    
        case upgradeType.player_speed:
            global.playerSpeedUpgrade += 1;
            break;
    
        case upgradeType.harpoon_range:
            global.harpoonRangeUpgrade += 15;
            break;
    }
    
    
}