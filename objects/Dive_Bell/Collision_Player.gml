//When player enters bell, go to upgrades screen and update the next room for the shop
if(can_enter){
    global.next_room = room_id;
    room_goto(Upgrade_Shop);
}