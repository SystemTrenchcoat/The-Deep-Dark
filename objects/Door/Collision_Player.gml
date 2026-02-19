//Teleport the player to the connected door with target
other.x = target_x;
other.y = target_y;

//Get room camera
var cam = view_camera[0];

//Change camera to target room's positioning
camera_set_view_pos(cam, cam_x, cam_y);
