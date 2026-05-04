function room_transition(room, music = noone){
        if (!instance_exists(Room_Transition_Effect)) {
        instance_create_layer(0, 0, "Instances", Room_Transition_Effect);
    }

    with (Room_Transition_Effect) {
        if (fade_state == "none") {
            target_room = room;
            target_music = music;
            fade_state = "out";
        }
    }
}