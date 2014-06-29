PlayerTimers();

switch (state) {
    case 0:
        PlayerMove();
        PlayerAimAttack();
        break;
    case 1:
        sprite_index = spr_player_eat;
        PlayerNoming();
        break;
}

PlayerDrag();
