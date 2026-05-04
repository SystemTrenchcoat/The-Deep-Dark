var cam = view_camera[0];

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Center of the screen
var cx = cam_x + cam_w * 0.5;
var cy = cam_y + cam_h * 0.5;

// Draw sprite centered
draw_sprite_ext(
    KrillLogoSprite, 
    0,             
    cx,
    cy,
    1, 1,           
    0,              
    c_white,
    1              
);