if (captives >= gv_captivesNeeded && winTimer == -1) {
    winTimer = winTimerCap;
    audio_play_sound(snd_win, 0, false);
}
