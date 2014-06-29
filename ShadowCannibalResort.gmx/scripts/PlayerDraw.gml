draw_self();

draw_sprite(spr_dart_icon, 0, view_xview, view_yview);
draw_set_font(fnt_hud);
draw_set_color(c_white);
draw_text(view_xview + sprite_get_width(spr_dart_icon), view_yview, "x" + string(darts));
