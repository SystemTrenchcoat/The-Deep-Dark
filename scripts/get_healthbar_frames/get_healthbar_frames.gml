//This function returns an array of numbers that is based on the player's current hp and max hp,
//for the purpose of choosing the frames to draw for the player's healthbar
function get_healthbar_frames(current_hp, max_hp){
    var frames = [];
    
    for(var i = 0; i < max_hp; i++){
        //This filled bool determines the frame type added
        var filled = i < current_hp;
        //First frame case
        if(i == 0){
            frames[i] = filled ? 0 : 4
        }
        //Last frame case
        else if(i == max_hp - 1){
            frames[i] = filled ? 5 : 3
        }
        //In between frame case
        else{
            frames[i] = filled ? 1 : 2
        }
    }
    
    return frames;

}