//When player enters bell, go to upgrades screen and update the next room for the shop
if(Task_Manager.GetCurrentTaskId() == "enter_bell"){
    global.next_level = room_id;
    room_goto(Upgrade_Shop);
}