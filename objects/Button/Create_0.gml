//This object is meant to be used for any UI elements that need clicking functionality, new actions can be created by expanding the run action function
//Check override variables in bottom left


//Expand this function when you add a new action
function run_action()
{
    if (action == "start-game")
    {
        room_goto(global.currentRoom);
    }
    if(action == "upgrade")
    {
        upgrade(upgrade_type)
    }
    if(action == "next-level"){
		global.currentRoom = global.next_level
        room_goto(global.next_level);
    }
    
}