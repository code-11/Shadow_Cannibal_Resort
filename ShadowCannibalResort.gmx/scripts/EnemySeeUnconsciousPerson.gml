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
    enemyFound = collision_line(x, y, xx, yy, obj_enemy, true, true);
    wallFound = collision_line(x, y, xx, yy, obj_wall, true, true);
    
    if (enemyFound && enemyFound.state == 4) {
        if (wallFound) {
            var enemyDist = distance_to_object(obj_player);
            var wallDist = distance_to_object(wallFound);
            if (enemyDist > wallDist) {
                enemyFound = false;
            }
        }
        if (enemyFound) {
            alert = true;
            audio_play_sound(choose(snd_wazzat, snd_huh), 3, false);
            break;
        }
    }
}

