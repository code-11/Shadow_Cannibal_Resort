var angle;
var angleAdjust = 2;
var angleCap = image_angle + fov;
var xx;
var yy;
var playerFound = false;
var wallFound = false;

for (angle = image_angle - fov; angle <= angleCap; angle += angleAdjust) {
    xx = x + lengthdir_x(sightR, angle);
    yy = y + lengthdir_y(sightR, angle);
    playerFound = collision_line(x, y, xx, yy, obj_player, true, true);
    wallFound = collision_line(x, y, xx, yy, obj_wall, true, true);
    
    if (playerFound) {
        if (wallFound) {
            var playerDist = distance_to_object(obj_player);
            var wallDist = distance_to_object(wallFound);
if (playerDist > wallDist) {
playerFound = false;
}
        }
        if (playerFound) {
            break;
        }
    }
}

if (!playerFound) {
}

return playerFound;

