/*
 * GENERAL
 */
sightR = 256;
fov = 30; //field of vision (degrees)
state = 0;

image_angle = random(360);
direction = image_angle;

image_speed = 0;

/*
state (soldier):
0 --> patrol
1 --> chase/attack player
2 --> alert
3 --> run away from player
4 --> KO'd
*/

/*
 * PATROL
 */
patrolSpeed = 1;
alertPatrolSpeed = 2;

alertTimer = -1;
alertTimerCap = 10 * room_speed;

shootTimer = -1;
shootTimerCap = 2 * room_speed;

px = x;
py = y;

alert = false;

minPatrolDist = 64;
maxPatrolDist = 96;

var hPatrolBound = 128;
var vPatrolBound = 96;
leftBound = x - hPatrolBound;
rightBound = x + hPatrolBound;
upBound = y - vPatrolBound;
downBound = y + vPatrolBound;
atLeft = false;
atRight = false;
atUp = false;
atDown = false;

dir = image_angle;
dirAdjust = 5;
turning = false;

/*
 * CHASE
 */
chaseSpeedMax = 1.5;
chaseSpeed = 0;

/*
 * TIMERS
 */
standTimerCap = 1 * room_speed;
standTimer = standTimerCap;
alertStandTimerCap = 0.5 * room_speed;

playerLostTimerCap = 3 * room_speed;
playerLostTimer = -1;

