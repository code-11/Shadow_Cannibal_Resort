EnemyTimers();

switch (state) {
    case 0:
        EnemyPatrol();
        if (EnemyCheckSight()) {
            state = 3;
            speed = 0;
            direction = 0;
            escTimer = escTimerCap;
            var scream = instance_create(x,y,obj_scream);
            scream.image_xscale = 0.75;
            scream.image_yscale = 0.75;
        }
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        EnemyEvade();
        break;
    case 4:
        speed = 0;
        image_speed = 0;
        escTimer = -1;
        break;
}

EnemyCheckAlert();
