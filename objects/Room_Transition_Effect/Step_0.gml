if (fade_state == "out") {
    fade_alpha += fade_out_speed;

    if (music_id != noone && audio_is_playing(music_id)) {
        audio_sound_gain(music_id, 1 - fade_alpha, 0);
    }
    else {
        music_id = noone;
    }

    if (fade_alpha >= 1) {
        fade_alpha = 1;

        if (music_id != noone && audio_is_playing(music_id)) {
            audio_stop_sound(music_id);
        }

        music_id = noone;

        room_goto(target_room);

        if (target_music != noone) {
            music_id = audio_play_sound(target_music, 0, true);

            if (music_id != noone) {
                audio_sound_gain(music_id, 0, 0);
            }
        }

        fade_state = "in";
    }
}
else if (fade_state == "in") {
    fade_alpha -= fade_in_speed;

    if (music_id != noone && audio_is_playing(music_id)) {
        audio_sound_gain(music_id, 1 - fade_alpha, 0);
    }

    if (fade_alpha <= 0) {
        fade_alpha = 0;
        fade_state = "none";

        target_room = noone;
        target_music = noone;
    }
}