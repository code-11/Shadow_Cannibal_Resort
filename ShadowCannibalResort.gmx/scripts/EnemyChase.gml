image_speed = 0.2;

var chaseDir = point_direction(x, y, obj_player.x, obj_player.y);
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

atLeft = false;
atRight = false;
atUp = false;
atDown = false;

if (x + xmove <= leftBound && xmove < 0) {
    atLeft = true;
}
if (x + xmove >= rightBound && xmove > 0) {
    atRight = true;
}
if (y + ymove <= upBound && ymove < 0) {
    atUp = true;
}
if (y + ymove >= downBound && ymove > 0) {
    atDown = true;
}

if (!collision_rectangle(x, y - vbor,
        xcheck, y + vbor, obj_wall,
        false, true) && !atLeft && !atRight) {
    x += xmove;
    dx = xmove;
    moveX = true;
}
if (!collision_rectangle(x - hbor, y,
        x + hbor, ycheck, obj_wall,
        false, true) && !atUp && !atDown) {
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
