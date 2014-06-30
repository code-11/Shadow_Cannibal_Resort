draw_self();

if (state != 4) {
    draw_sprite_ext(spr_light, 0, x, y, sightR / 256, 1, image_angle, c_white, 0.5);
}
else {
    //draw_sprite_ext(spr_x, 0, x, y, 1, 1, 0, c_white, 0.3);
    draw_set_color(c_blue);
    draw_circle(x,y,sprite_width/2, true);
    draw_set_color(c_white);
}

if (alert) {
    draw_set_font(fnt_hud);
    draw_set_color(c_red);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_text(x, y - sprite_width * 0.3, "!");
    draw_set_color(c_white);
}
