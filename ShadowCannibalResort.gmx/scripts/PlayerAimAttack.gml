image_angle = point_direction(x, y, mouse_x, mouse_y);

if (mouse_check_button_pressed(mb_right) && canShoot && darts > 0) {
    instance_create(x,y,obj_dart);
    sprite_index = spr_player_dart;
    spriteRevertTimer = spriteRevertTimerCap;
    canShoot = false;
    canShootTimer = canShootTimerCap;
    darts--;
}

if (mouse_check_button_pressed(mb_left) && canMelee) {
    
}

if (keyboard_check_pressed(vk_space) && canNom) {
    var near = instance_nearest(x, y, obj_enemy);
    if (distance_to_object(near) < nomRange) {
        var checkNom = false;
        var scream = false;
        if (near.object_index == obj_tourist) {
            checkNom = true;
            if (near.state != 4) {
                scream = true;
            }
        }
        else if (near.state == 4) {
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
            
            if (scream) {
                near.alert = true;
            }
        }
    }
}
