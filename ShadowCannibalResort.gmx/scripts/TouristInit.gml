EnemyInit();

/*
 * GENERAL
 */
sightR = 200;
fov = 30; //field of vision (degrees)
state = 0;

image_angle = random(360);
direction = image_angle;

image_speed = 0;

/*
state (soldier):
0 --> patrol
1 --> chase player
2 --> attack
3 --> run away from player
4 --> KO'd
*/

/*
 * PATROL
 */
patrolSpeed = 0.75;
alertPatrolSpeed = 1.5;

px = x;
py = y;

minPatrolDist = 32;
maxPatrolDist = 96;

spin = true;
var hPatrolBound = 128;
var vPatrolBound = 128;
leftBound = x - hPatrolBound;
rightBound = x + hPatrolBound;
upBound = y - vPatrolBound;
downBound = y + vPatrolBound;
atLeft = false;
atRight = false;
atUp = false;
atDown = false;

dir = image_angle;
dirAdjust = 2.5;
turning = false;

/*
 * CHASE / Evade
 */
chaseSpeedMax = 2.3;
chaseSpeed = 0;

/*
 * TIMERS
 */
alertStandTimerCap = 0.5 * room_speed;
standTimerCap = 2.5 * room_speed;
standTimer = standTimerCap;

escTimer = -1;
escTimerCap = 1 * room_speed;

alertTimer = -1;
alertTimerCap = 10 * room_speed;

escTarget = -1;
