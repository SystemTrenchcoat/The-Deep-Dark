// Inherit the parent event
event_inherited(); //gets tileset

//Const/variable declarations go here
moveSpeed = global.playerSpeedUpgrade ? 0.2 : 0.1;
maxSpeed = global.playerSpeedUpgrade ? 1.5 : 1;

//Should be unnecessary, these have been added to global
//global.fired = false
//global.returning = false

hp = global.healthUpgrade ? 4 : 3;