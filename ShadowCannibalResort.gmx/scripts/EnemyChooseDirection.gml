if (atLeft && atUp) {
    dir = random_range(270, 360);
}
else if (atLeft && atDown) {
    dir = random_range(0, 90);
}
else if (atRight && atUp) {
    dir = random_range(180, 270);
}
else if (atRight && atDown) {
    dir = random_range(90, 180);
}
else if (atLeft) {
    dir = choose(random_range(270, 360), random_range(0, 90));
}
else if (atRight) {
    dir = random_range(90, 270);
}
else if (atUp) {
    dir = random_range(180, 360);
}
else if (atDown) {
    dir = random_range(0, 180);
}
else {
    dir = random_range(0, 360);
}

if (image_angle < 180) {
    if (dir > image_angle + 180) {
        dir -= 360;
    }
}
if (image_angle > 180) {
    if (dir < image_angle - 180) {
        dir += 360;
    }
}

turning = true;

if (image_angle > dir) {
    dirAdjust = abs(dirAdjust) * -1;
}
else if (image_angle < dir) {
    dirAdjust = abs(dirAdjust);
}
else {
    turning = false;
}

dir = (dir + 360) mod 360;
