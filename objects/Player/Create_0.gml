// Inherit the parent event
event_inherited(); //gets tileset

//Light modifiers
light_enabled =  true;
light_radius  = 20;   
light_alpha   = 0.2;   
light_color   = c_white;
light_offsetx = 0;
light_offsety = 0;


//Const/variable declarations go here
moveSpeed = 0.5 + (0.1 * global.playerSpeedUpgrade);

//Should be unnecessary, these have been added to global
//global.fired = false
//global.returning = false

hp = 90 + global.healthUpgrade;
//used for drawing health bar
max_hp = hp;

//Base acceleration values
accel_slow = 0.05; //basically friction
accel = 0.18;
accel_max = 3;

//Horizontal acceleration
accel_h = accel;
accel_h_final = 0;
accel_h_max = accel_max;
last_h = 0;
hsp = 0;

//Vertical acceleration
accel_v = accel;
accel_v_final = 0;
accel_v_max = accel_max;
last_v = 0;
vsp = 0;

//Oxygen depleting
oxy_timer = 30;



mask_index = DiverIdle_Up;