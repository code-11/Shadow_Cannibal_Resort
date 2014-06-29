draw_self();

if (state != 4) {
    draw_sprite_ext(spr_light, 0, x, y, sightR / 256, 1, image_angle, c_white, 0.5);
}
else {
    draw_sprite_ext(spr_x, 0, x, y, 1, 1, 0, c_white, 0.5);
}
