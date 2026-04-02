// Get current camera
var cam = view_camera[0];
var vx  = camera_get_view_x(cam);
var vy  = camera_get_view_y(cam);
var vw  = camera_get_view_width(cam);
var vh  = camera_get_view_height(cam);

// Recreate surface if needed
if (!surface_exists(light_surface)) {
    light_surface = surface_create(vw, vh);
}

// Camera check
if (surface_get_width(light_surface) != vw || surface_get_height(light_surface) != vh) {
    surface_free(light_surface);
    light_surface = surface_create(vw, vh);
}

// Draw onto light surface
surface_set_target(light_surface);

// Fill with ambient darkness/light level
var amb = round(clamp(ambient, 0, 1) * 255);
draw_clear_alpha(make_color_rgb(amb, amb, amb + 20), 1);

// Add lights
gpu_set_blendmode_ext(bm_one, bm_one);

//Entities are by default disabled, must override in object to show light
with (Entity) {
    if (light_enabled) {
        var lx = x - vx + lengthdir_x(light_offsetx, -image_angle);
        var ly = y - vy + lengthdir_y(light_offsety, -image_angle);

        // Convert desired radius into sprite scale
        var xscale = (light_radius * 2) / sprite_get_width(Light_Circle);
        var yscale = (light_radius * 2) / sprite_get_height(Light_Circle);

        draw_sprite_ext(
            Light_Circle,
            0,
            lx,
            ly,
            xscale,
            yscale,
            0,
            light_color,
            light_alpha
        );
    }
}

//Light sources are by default enabled
with (Light_Source) {
    if (light_enabled) {
        var lx = x - vx;
        var ly = y - vy;

        // Convert desired radius into sprite scale
        var xscale = (light_radius * 2) / sprite_get_width(Light_Circle);
        var yscale = (light_radius * 2) / sprite_get_height(Light_Circle);

        draw_sprite_ext(
            Light_Circle,
            0,
            lx,
            ly,
            xscale,
            yscale,
            0,
            light_color,
            light_alpha
        );
    }
}


//Harpoon projectile has a special light that points in the direction it is aimed at
with (Harpoon_Projectile) {
    if (light_enabled) {
        var lx = x - vx;
        var ly = y - vy;

        // Convert desired radius into sprite scale
        var xscale = (light_radius * 2) / sprite_get_width(Light_Circle);
        var yscale = (light_radius * 2) / sprite_get_height(Light_Circle);

        draw_sprite_ext(
            Light_Beam,
            0,
            lx,
            ly,
            xscale,
            yscale,
            Harpoon_Projectile.image_angle - 90,
            light_color,
            light_alpha
        );
    }
}

 



gpu_set_blendmode(bm_normal);
surface_reset_target();

// Multiply light surface over the already-drawn world
gpu_set_blendmode_ext(bm_dest_colour, bm_zero);
draw_surface(light_surface, vx, vy);
gpu_set_blendmode(bm_normal);