global._dt = game_get_speed(gamespeed_fps)/6000;

//This is ran at the main menu
function ResetGame(){
    //Harpoon
    global.fired = false;
    global.returning = false;
    
    //Upgrades
    global.healthUpgrade = 0;
    global.harpoonRangeUpgrade = 0;
    global.playerSpeedUpgrade = 0;
    
    //Deals with trash tracking and quota between rooms
    global.levelTrashCount = 0;
    global.totalTrashCount = 0;
    //Variable for telling the upgrade room what room is next
    global.next_level = Lvl_0
    global.currentRoom = Lvl_0;
    
    //Tasks
    global.playerHasMoved = false;
    global.krillKilled = 0;
    global.harpoonFired = false;
    global.bubbleTouched = false;
    global.trashtopusKilled = false;
    
    global.next_music = noone;
    
    global.upgrades = [];
    

}