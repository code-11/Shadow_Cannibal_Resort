if (alertTimer > 0){
    alertTimer--;
}
else if (alertTimerCap == 0) {
    alertTimer = -1;
    alert = false;
}

if (shootTimer > 0) {
    shootTimer--;
}
else if (shootTimer == 0) {
    shootTimer = -1;
    shootTimer = shootTimerCap;
}

if (object_index == obj_tourist) {
    if (escTimer > 0) {
        escTimer--;
    }
    else if (escTimer == 0) {
        effect_create_above(ef_smoke, x, y, 2, c_white);
        instance_destroy();
    }
}
