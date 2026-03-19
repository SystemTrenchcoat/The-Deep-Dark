//Use this to determine the requirements for each task.
if(!taskComplete){
    switch (GetCurrentTaskId()) {
        case "move":
            if (global.playerHasMoved) taskComplete = true;
            break;
    
        case "kill_krill":
            if (global.krillKilled >= 1) taskComplete = true;
            break;
    
        case "collect_trash_4":
            if (global.levelTrashCount >= 4) taskComplete = true;
            break;
    
        case "collect_trash_6":
            if (global.levelTrashCount >= 6) taskComplete = true;
            break;
    
        case "collect_trash_8":
            if (global.levelTrashCount >= 8) taskComplete = true;
            break;
        
        case "fire_harpoon":
            if(global.harpoonFired) taskComplete = true;
            break;
    
        case "enter_bell":
            break;
    }
}
//Going between tasks has a buffer
else {
    nextTaskTimer--;
    if(!audioPlayed){
        audio_play_sound(mission_complete, 5, false);
        audioPlayed = true;
    }

    if (nextTaskTimer <= 0) {
        AdvanceTask();
    }
}

