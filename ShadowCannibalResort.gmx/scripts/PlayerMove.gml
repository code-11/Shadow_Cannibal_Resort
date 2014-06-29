var dir = 0;
var moving = true;

mySpeed = maxSpeed;
image_speed = 0.2;

if (keyboard_check(ord('W')) && keyboard_check(ord('A'))) {
    dir = 135;
}
else if (keyboard_check(ord('A')) && keyboard_check(ord('S'))) {
    dir = 225;
}
else if (keyboard_check(ord('S')) && keyboard_check(ord('D'))) {
    dir = 315;
}
else if (keyboard_check(ord('D')) && keyboard_check(ord('W'))) {
    dir = 45;
}
else if (keyboard_check(ord('W'))) {
    dir = 90;
}
else if (keyboard_check(ord('A'))) {
    dir = 180;
}
else if (keyboard_check(ord('S'))) {
    dir = 270;
}
else if (keyboard_check(ord('D'))) {
    dir = 0;
}
else {
    moving = false;
    mySpeed = 0;
    image_speed = 0;
}

var xmove = lengthdir_x(mySpeed, dir);
var ymove = lengthdir_y(mySpeed, dir);
var hbor = sprite_width * 0.3;
var vbor = sprite_height * 0.3;
var xcheck = x + xmove + hbor * sign(xmove);
var ycheck = y + ymove + vbor * sign(ymove);
var dx = 0;
var dy = 0;
if (!collision_rectangle(x, y - vbor,
        xcheck, y + vbor, obj_wall,
        false, true)) {
    x += xmove;
    dx = xmove;
}
if (!collision_rectangle(x - hbor, y,
        x + hbor, ycheck, obj_wall,
        false, true)) {
    y += ymove;
    dy = ymove;
}
