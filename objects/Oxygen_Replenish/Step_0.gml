//Scale the sprite without changing the hitbox
xscale = oxyCurrent / oxyAmount;
yscale = oxyCurrent / oxyAmount;
if (oxyCurrent <= 0)
    instance_destroy();