PlayerTimers();

switch (state) {
    case 0:
        PlayerMove();
        PlayerAimAttack();
        break;
    case 1:
        PlayerNoming();
        break;
}

PlayerDrag();
