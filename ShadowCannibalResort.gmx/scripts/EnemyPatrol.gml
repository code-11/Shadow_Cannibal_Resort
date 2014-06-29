if (standTimer > 0) {
    //standing, do nothing
    standTimer--;
}
else if (standTimer == 0) {
    standTimer = -1;
    EnemyChooseDirection();
}
else {    
    if (turning) {
        image_angle += dirAdjust;
        if (image_angle < 0) {
            image_angle += 360;
        }
        else if (image_angle >= 360) {
            image_angle = image_angle mod 360;
        }
        
        var upperBound = dir + abs(dirAdjust);
        var lowerBound = dir - abs(dirAdjust);
        if (image_angle > lowerBound && image_angle < upperBound) {
            image_angle = dir;
            turning = false;
            //start walking, find a place to walk towards
            var dist = random_range(minPatrolDist, maxPatrolDist);
            var px = x + lengthdir_x(dist, dir);
            var py = y + lengthdir_y(dist, dir);
            
            atLeft = false;
            atRight = false;
            atUp = false;
            atDown = false;
            
            image_angle = dir;
            
            speed = patrolSpeed;
            direction = dir;
        }
    }
    else {
        var boundHit = false;
        if (x + lengthdir_x(speed, direction) <= leftBound) {
            atLeft = true;
            boundHit = true;
        }
        if (x + lengthdir_x(speed, direction) >= rightBound) {
            atRight = true;
            boundHit = true;
        }
        if (y + lengthdir_y(speed, direction) <= upBound) {
            atUp = true;
            boundHit = true;
        }
        if (y + lengthdir_y(speed, direction) >= downBound) {
            atDown = true;
            boundHit = true;
        }
        if (point_distance(x, y, px, py) <= 2 * patrolSpeed || boundHit) {
            standTimer = standTimerCap;
            speed = 0;
        }
    }
}
