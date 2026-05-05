global.levelTrashCount++;
global.totalTrashCount++;
global.finalTrashCount++;
audio_sound_pitch(trash_pickup, random_range(1.1, 1.4));
audio_play_sound(trash_pickup, 2, false);
instance_destroy();
