//Each trash placed choices to have a random sprite to represent it
var sprite_options = [
    BottleSprite,
    CanSprite,
    PlasticTrash_1,
    PlasticTrash_2,
    WaterBottle
];

sprite_index = sprite_options[irandom(array_length(sprite_options) - 1)];

