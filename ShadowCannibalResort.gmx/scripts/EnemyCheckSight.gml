var angle;
var angleAdjust = 2;
var angleCap = image_angle + fov;
var xx;
var yy;
var obj;

for (angle = image_angle - fov; angle <= angleCap; angle += angleAdjust) {
    xx = x + lengthdir_x(sightR, angle);
    yy = y + lengthdir_y(sightR, angle);
    obj = collision_line(x, y, xx, yy, obj_player, true, true);
    if (obj) {
        image_blend = c_red;
        break;
    }
}

if (!obj) {
    image_blend = c_white;
}

