mySpeed=0;
maxSpeed=3;

image_index = 1;
image_speed = 0.2;

state = 0;
/*
    state:
    0 --> normal moving
    1 --> eating
*/

/*
 * TIMERS
 */
nomTimer = -1;
nomTimerCap = 3 * room_speed;
