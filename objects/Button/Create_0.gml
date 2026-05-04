//This object is meant to be used for any UI elements that need clicking functionality, new actions can be created by expanding the run action function
//Check override variables in bottom left


//Expand this function when you add a new action
function run_action()
{
    if (action == "start-game")
    {
        if (variable_global_exists("menu_music_id")) {
            audio_sound_gain(global.menu_music_id, 0, 1000); // 1 sec fade-out
        }

        room_transition(global.currentRoom);
    }
    if(action == "upgrade")
    {
        upgrade(upgrade_type)
    }
    if(action == "next-level"){
		global.currentRoom = global.next_level
        room_transition(global.next_level);
    }
    if(action == "reset-game"){
        ResetGame();
        room_transition(Main_Menu, krillion);
    }
    
}

//Used to track whether to play hover sound or not
track_hover = true;