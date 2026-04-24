
var shake_x = 0;
var shake_y = 0;

//Shake on hp going down. Shake decreases over time
if (hurt_effect_timer > 5) {
    shake_x = random_range(-2, 2);
    shake_y = random_range(-2, 2);
    hurt_effect_timer--;
}
else if (hurt_effect_timer > 0){
    shake_x = random_range(-1, 1);
    shake_y = random_range(-1, 1);
    hurt_effect_timer--;
}



//Show the shake
draw_sprite(sprite_index, image_index, x + shake_x, y + shake_y);
