var angle;
var angleAdjust = 2;
var angleCap = image_angle + fov;
var xx;
var yy;
var playerFound = false;

for (angle = image_angle - fov; angle <= angleCap; angle += angleAdjust) {
    xx = x + lengthdir_x(sightR, angle);
    yy = y + lengthdir_y(sightR, angle);
    playerFound = collision_line(x, y, xx, yy, obj_player, true, true);
    if (playerFound) {
        image_blend = c_red;
        break;
    }
}

if (!playerFound) {
    image_blend = c_white;
}

return playerFound;

