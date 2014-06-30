EnemyTimers();

switch (state) {
    case 0:
        TouristPatrol();
        if (EnemyCheckSight()) {
            state = 3;
            speed = 0;
            direction = 0;
            var scream = instance_create(x,y,obj_scream);
            if (sprite_index == spr_tourist1) {
                audio_play_sound(snd_ohno, 3, false);
            }
            else {
                audio_play_sound(snd_fe_ohno, 3, false);
            }
            scream.image_xscale = 0.75;
            scream.image_yscale = 0.75;
        }
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        TouristEscape();
        break;
    case 4:
        if (sprite_index == spr_tourist1) {
            sprite_index = spr_tourist1_ko;
        }
        else if (sprite_index == spr_tourist2) {
            sprite_index = spr_tourist2_ko;
        }
        alert = false;
        speed = 0;
        image_speed = 0;
        escTimer = -1;
        break;
}

