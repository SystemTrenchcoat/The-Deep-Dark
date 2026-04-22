tilemap = layer_tilemap_get_id("Tiles_Col");
 //show_debug_message(string_concat("DT",global._dt));

//Light source defaults
light_enabled = false;
light_radius  = 60;   
light_alpha   = 1.0;   
light_color   = c_white;
light_offsetx = 0;
light_offsety = 0;

//override this to change the sound the entity makes on being damaged/killed
entity_hit_sound = player_hit;
entity_death_sound = enemy_death;

//so we can have an effect on damage
hurt_effect_timer = 0;