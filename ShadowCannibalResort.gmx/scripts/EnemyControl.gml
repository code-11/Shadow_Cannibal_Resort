switch (state) {
    case 0:
        EnemyPatrol();
        if (EnemyCheckSight()) {
            state = 3;
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
}
