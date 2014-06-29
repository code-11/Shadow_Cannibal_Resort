var chaseDir = point_direction(x, y, obj_player.x, obj_player.y) - 180;
image_angle = chaseDir;
var xmove = lengthdir_x(chaseSpeedMax, chaseDir);
var ymove = lengthdir_y(chaseSpeedMax, chaseDir);
var hbor = sprite_width * 0.3;
var vbor = sprite_height * 0.3;
var xcheck = x + xmove + hbor * sign(xmove);
var ycheck = y + ymove + vbor * sign(ymove);
var dx = 0;
var dy = 0;
var moveX = false;
var moveY = false;
if (!collision_rectangle(x, y - vbor,
        xcheck, y + vbor, obj_wall,
        false, true)) {
    x += xmove;
    dx = xmove;
    moveX = true;
}
if (!collision_rectangle(x - hbor, y,
        x + hbor, ycheck, obj_wall,
        false, true)) {
    y += ymove;
    dy = ymove;
    moveY = true;
}

if (moveX && !moveY) {
    x += sign(xmove) * chaseSpeedMax;
}
if (moveY && !moveX) {
    y += sign(ymove) * chaseSpeedMax;
}
