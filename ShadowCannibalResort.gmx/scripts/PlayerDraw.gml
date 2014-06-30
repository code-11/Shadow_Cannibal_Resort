draw_self();

draw_sprite(spr_dart_icon, 0, view_xview, view_yview);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_hud);
draw_set_color(c_white);
draw_text(view_xview + sprite_get_width(spr_dart_icon), view_yview, "x" + string(darts));

draw_sprite(spr_clip_icon, 0, view_xview, view_yview + string_height("A"));
draw_text(view_xview + sprite_get_width(spr_clip_icon), view_yview + string_height("A"), "x" + string(paperclips));

draw_text(view_xview, view_yview + string_height("A") * 2, 
    "Captives/Meals: " + string(captives) + "/" + string(gv_captivesNeeded));
    
if (winTimer > 0) {
    draw_set_font(fnt_win);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(view_xview + view_wview * 0.5, view_yview + view_hview * 0.5,
        "WINNER");
}
else if (loseTimer > 0) {
    draw_set_font(fnt_win);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(view_xview + view_wview * 0.5, view_yview + view_hview * 0.5,
        "Restarting Room...");
}
