if (alertTimer > 0){
    alertTimer--;
}
else if (alertTimerCap == 0) {
    alertTimer = -1;
    //alert = false;
}



if (object_index == obj_tourist) {
    if (escTimer > 0) {
        escTimer--;
    }
    else if (escTimer == 0) {
        effect_create_above(ef_smoke, x, y, 2, c_white);
        escTimer = -1;
            with(obj_player) {
                if (loseTimer < 0) {
                    effect_create_above(ef_smoke,x,y,2, c_red);
                    audio_play_sound(snd_lose, 0, false);
                    room_restart();
                }
            }
        instance_destroy();
    }
}
else {
    if (shootTimer > 0) {
        shootTimer--;
    }
    else if (shootTimer == 0) {
        shootTimer = -1;
        shootTimer = shootTimerCap;
        var b = instance_create(x,y,obj_bullet);
        b.speed = 10;
        b.image_angle = image_angle;
        b.direction = image_angle;
    }
    
    if (playerLostTimer > 0) {
        playerLostTimer--;
    }
    else if (playerLostTimer == 0) {
        playerLostTimer = -1;
        state = 0;
        speed = 0;
        sprite_index = spr_guard;
        direction = image_angle;
        standTimer = standTimerCap;
        shootTimer = -1;
    }
}








