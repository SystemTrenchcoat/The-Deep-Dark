global._dt = game_get_speed(gamespeed_fps)/6000;

//Harpoon
global.fired = false;
global.returning = false;

//Upgrades
global.healthUpgrade = false;
global.harpoonSpeedUpgrade = false;
global.playerSpeedUpgrade = false;

//Deals with trash tracking and quota between rooms
global.trash_count = 0;
global.quota = 8;
//Variable for telling the upgrade room what room is next
global.next_level = Lvl_2
