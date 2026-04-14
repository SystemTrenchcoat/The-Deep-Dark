//This function returns an array of numbers that is based on the player's current hp and max hp,
//for the purpose of choosing the frames to draw for the player's healthbar
function get_healthbar_frames(current_hp, max_hp){
    
    frame_num = max_hp / global.oneHealthSegment;
    
    var frames = [];
    
    for(var i = 0; i < frame_num; i++){
        //This filled bool determines the frame type added
        var filled = i < current_hp;
        //First frame case
        if(i == 0){
            frames[i] = filled ? 4 : 4
        }
        //Last frame case
        else if(i == frame_num - 1){
            frames[i] = filled ? 3 : 3
        }
        //In between frame case
        else{
            frames[i] = filled ? 2 : 2
        }
    }
    
    return frames;

}