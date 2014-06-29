image_angle = point_direction(x, y, mouse_x, mouse_y);

if (mouse_check_button_pressed(mb_left) && canShoot) {
    instance_create(x,y,obj_dart);
    sprite_index = spr_player_dart;
    spriteRevertTimer = spriteRevertTimerCap;
    canShoot = false;
    canShootTimer = canShootTimerCap;
}
