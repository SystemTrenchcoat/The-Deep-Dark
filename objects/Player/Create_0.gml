// Inherit the parent event
event_inherited(); //gets tileset

//Const/variable declarations go here
moveSpeed = 0.05 + (0.05 * global.playerSpeedUpgrade);
maxSpeed = 0.5 + (0.25 * global.playerSpeedUpgrade);

//Should be unnecessary, these have been added to global
//global.fired = false
//global.returning = false

hp = 3 + global.healthUpgrade;
//used for drawing health bar
max_hp = hp;
