audio_sound_pitch(enemy_death, random_range(0.9, 1.1));
audio_play_sound(enemy_death, 1, false);
global.krillKilled = true;
//instance_destroy(other)