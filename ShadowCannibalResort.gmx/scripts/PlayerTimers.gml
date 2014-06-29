if (nomTimer > 0) {
    nomTimer--;
}
else if (nomTimer == 0) {
    nomTimer = -1;
    sprite_index = spr_player;
    state = 0;
}

if (canShootTimer > 0) {
    canShootTimer--;
}
else if (canShootTimer == 0) {
    canShootTimer = -1;
    canShoot = true;
}

if (spriteRevertTimer > 0) {
    spriteRevertTimer--;
}
else if (spriteRevertTimer == 0) {
    spriteRevertTimer = -1;
    sprite_index = spr_player;
}


