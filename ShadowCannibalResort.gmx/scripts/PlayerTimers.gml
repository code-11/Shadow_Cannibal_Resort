if (nomTimer > 0) {
    nomTimer--;
}
else if (nomTimer == 0) {
    nomTimer = -1;
    sprite_index = spr_player;
    image_speed = 0;
    state = 0;
    captives++;
    with(nomTarget) {
        instance_destroy();
    }
    nomTarget = -1;
}

if (canNomTimer > 0) {
    canNomTimer--;
}
else if (canNomTimer == 0) {
    canNomTimer = -1;
    canNom = true;
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

if (canMeleeTimer > 0) {
    canMeleeTimer--;
}
else if (canMeleeTimer == 0) {
    canMeleeTimer = -1;
    canMelee = true;
}


