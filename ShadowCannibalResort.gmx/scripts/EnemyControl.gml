EnemyTimers();

switch (state) {
    case 0:
        EnemyPatrol();
        if (EnemyCheckSight()) {
            state = 2;
            speed = 0;
            direction = 0;
            shootTimer = shootTimerCap;
        }
        break;
    case 1:
        EnemyChase();
        break;
    case 2:
        sprite_index = spr_guard_shoot;
        image_angle = point_direction(x, y, obj_player.x, obj_player.y);
        if (!EnemyCheckSight()) {
            if (playerLostTimer == -1) {
                playerLostTimer = playerLostTimerCap;
            }
        }
        break;
    case 3:
        EnemyEvade();
        break;
    case 4:
        sprite_index = spr_guard_ko;
        alert = false;
        speed = 0;
        image_speed = 0;
        escTimer = -1;
        break;
}

