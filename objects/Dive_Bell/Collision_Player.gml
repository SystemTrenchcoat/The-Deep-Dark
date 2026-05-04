//When player enters bell, go to upgrades screen and update the next room for the shop
if(Task_Manager.GetCurrentTaskId() == "enter_bell"){
	global.returning = false
	global.fired = false
    global.next_level = room_id;
    room_transition(Upgrade_Shop, buy_something);
}