//Go from black to krill logo at start of game
if(!global.intro_faded){
    global.intro_faded = true;
    room_transition(KrillLogo);
}

menu_timer--;
if(menu_timer <= 0)
    room_transition(Main_Menu);
