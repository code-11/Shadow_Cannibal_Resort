image_angle = point_direction(x, y, mouse_x, mouse_y);

if (mouse_check_button_pressed(mb_right) && canShoot && darts > 0) {
    audio_play_sound(snd_swish1, 0, false);
    instance_create(x,y,obj_dart);
    sprite_index = spr_player_dart;
    spriteRevertTimer = spriteRevertTimerCap;
    canShoot = false;
    canShootTimer = canShootTimerCap;
    darts--;
}

if (mouse_check_button_pressed(mb_left) && canMelee) {
    audio_play_sound(choose(snd_swish1, snd_swish2), 0, false);
    instance_create(x,y,obj_club);
    canMelee = false;
    canMeleeTimer = canMeleeTimerCap;
}

if (keyboard_check_pressed(ord('E'))) {
    if (dragTarget == -1) {
        var near = instance_nearest(x, y, obj_enemy);
        if (distance_to_object(near) <= dragRange
                && near.state == 4) {
            dragTarget = near;
        }
    } else {
        dragTarget = -1;
    }
}
else if (keyboard_check_pressed(vk_space) && canNom) {
    audio_play_sound(snd_nom, 0, false);
    var near = instance_nearest(x, y, obj_enemy);
    if (distance_to_object(near) <= nomRange) {
        var checkNom = false;
        if (near.state == 4) {
            checkNom = true;
        }
        if (checkNom) {
            nomTarget = near;
            
            state = 1;
            
            sprite_index = spr_player_eat;
            
            image_speed = 0.2;
            
            image_angle = point_direction(x,y,near.x,near.y);
            
            nomTimer = nomTimerCap;
            
            canNom = false;
            canNomTimer = canNomTimerCap;
        }
    }
}
