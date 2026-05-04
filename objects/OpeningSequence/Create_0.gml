
global.intro_faded = false;

menu_timer = 180;

if (!audio_is_playing(krillion)) {
    global.menu_music_id = audio_play_sound(krillion, 0, true);
    audio_sound_gain(global.menu_music_id, 0, 0);
    audio_sound_gain(global.menu_music_id, 1, 16000); 
} 
