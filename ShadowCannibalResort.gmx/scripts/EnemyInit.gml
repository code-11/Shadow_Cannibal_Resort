/*
 * GENERAL
 */
sightR = 256;
fov = 30; //field of vision (degrees)
state = 0;
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
patrolSpeed = 1;
px = x;
py = y;

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
chaseSpeedMax = 2;
chaseSpeed = 0;

/*
 * TIMERS
 */
standTimerCap = 1 * room_speed;
standTimer = standTimerCap;
