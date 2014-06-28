var dir = 0;
var moving = true;

mySpeed = maxSpeed;

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
}

x += lengthdir_x(mySpeed, dir);
y += lengthdir_y(mySpeed, dir);
