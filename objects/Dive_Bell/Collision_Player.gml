//When player enters bell, go to upgrades screen and update the next room for the shop
if(Task_Manager.GetCurrentTaskId() == "enter_bell"){
	global.returning = false
	global.fired = false
    global.next_level = room_id;
    if(!audio_is_playing(enter_bell)){
       audio_play_sound(enter_bell, 1, false); 
    }
    if(room_id != YouWin){
      room_transition(Upgrade_Shop, buy_something);  
    }
    else{
        room_transition(YouWin, buy_something);
    }
}