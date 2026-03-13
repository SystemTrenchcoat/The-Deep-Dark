// Inherit the parent event
event_inherited(); //gets tileset

//Const/variable declarations go here
moveSpeed = global.playerSpeedUpgrade ? 0.1 : 0.05;
maxSpeed = global.playerSpeedUpgrade ? 0.75 : 0.5;

//Should be unnecessary, these have been added to global
//global.fired = false
//global.returning = false

hp = 3 + global.healthUpgrade;
//used for drawing health bar
maxhp = hp;