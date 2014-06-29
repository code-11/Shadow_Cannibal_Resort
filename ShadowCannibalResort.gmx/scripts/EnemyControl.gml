EnemyTimers();

switch (state) {
    case 0:
        EnemyPatrol();
        if (EnemyCheckSight()) {
            state = 1;
            speed = 0;
            direction = 0;
        }
        break;
    case 1:
        EnemyChase();
        break;
    case 2:
        break;
    case 3:
        EnemyEvade();
        break;
    case 4:
        image_blend = c_blue;
        speed = 0;
        break;
}

EnemyCheckAlert();
