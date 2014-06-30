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
        if (sprite_index != spr_tourist2) {
            audio_play_sound(choose(snd_stopeating, snd_moneyback, snd_quitit), 3, false);
        }
        else {
            audio_play_sound(choose(snd_fe_worstvacation, snd_fe_aaak, snd_fe_ohno), 3, false);
        }
        effect_create_above(ef_smoke, x, y, 2, c_red);
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

if (winTimer > 0) {
    winTimer--;
}
else if (winTimer == 0) {
    if (room_next(room) != -1) {
        room_goto(room_next(room));
    }
    else {
        game_restart();
    }
}

if (loseTimer > 0) {
    loseTimer--;
}
else if (loseTimerCap == 0) {
    room_restart();
}
