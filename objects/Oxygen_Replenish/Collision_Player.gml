//Refill player's oxygen at the rate decided
if Player.hp < 90 + global.healthUpgrade{
	Player.hp += oxyRate
    //Comment this part out if you don't want the bubble to decrease in size
    oxyCurrent -= oxyRate;
}

