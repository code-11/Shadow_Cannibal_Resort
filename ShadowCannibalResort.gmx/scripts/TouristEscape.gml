if (escTarget == -1) {
    escTarget = instance_nearest(x,y,obj_esc);
}

image_speed = 0.2;

var escDir = point_direction(x, y, escTarget.x, escTarget.y);
image_angle = escDir;
var xmove = lengthdir_x(chaseSpeedMax, escDir);
var ymove = lengthdir_y(chaseSpeedMax, escDir);
var hbor = sprite_width * 0.4;
var vbor = sprite_height * 0.4;
var xcheck = x + xmove + sprite_width * 0.5 * sign(xmove);
var ycheck = y + ymove + sprite_height * 0.5 * sign(ymove);
var dx = 0;
var dy = 0;
var moveX = false;
var moveY = false;
if (!collision_rectangle(x, y - vbor,
        xcheck, y + vbor, obj_wall,
        true, true)) {
    x += xmove;
    dx = xmove;
    moveX = true;
}
if (!collision_rectangle(x - hbor, y,
        x + hbor, ycheck, obj_wall,
        true, true)) {
    y += ymove;
    dy = ymove;
    moveY = true;
}

if (collision_rectangle(x - sprite_width * 0.55, y - sprite_height * 0.55,
        x + sprite_width * 0.55, y - sprite_height * 0.55, escTarget, false, true)) {
    show_debug_message("escape hit");
    if (escTimer == -1) {
        escTimer = escTimerCap;
    }
}

if (moveX && !moveY) {
    x -= xmove;
    x += sign(xmove) * chaseSpeedMax;
}
if (moveY && !moveX) {
    y -= ymove;
    y += sign(ymove) * chaseSpeedMax;
}

if (!moveX && !moveY) {
    escDir = point_direction(x, y, escTarget.x, escTarget.y) - 180;
    image_angle = escDir;
    xmove = lengthdir_x(chaseSpeedMax, escDir);
    ymove = lengthdir_y(chaseSpeedMax, escDir);
    hbor = sprite_width * 0.4;
    vbor = sprite_height * 0.4;
    xcheck = x + xmove + sprite_width * 0.5 * sign(xmove);
    ycheck = y + ymove + sprite_height * 0.5 * sign(ymove);
    
    if (!collision_rectangle(x, y - vbor,
            xcheck, y + vbor, obj_wall,
            true, true)) {
        x += xmove;
    }
    if (!collision_rectangle(x - hbor, y,
            x + hbor, ycheck, obj_wall,
            true, true)) {
        y += ymove;
    }
}
