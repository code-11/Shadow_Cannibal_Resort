mySpeed=0;
maxSpeed=3;

image_index = 1;
image_speed = 0.2;

darts = 1;

state = 0;
/*
    state:
    0 --> normal moving
    1 --> eating
*/

canBeSeen = true;

nomRange = 32;
nomTarget = -1;

/*
 * TIMERS
 */
nomTimer = -1;
nomTimerCap = 3 * room_speed;

canNom = true;
canNomTimer = -1;
canNomTimerCap = 10 * room_speed;

canShoot = true;
canShootTimer = -1;
canShootTimerCap = 0.5 * room_speed;

spriteRevertTimer = -1;
spriteRevertTimerCap = 3 * room_speed;

/*
 * PARTICLES
 */
psmain=part_system_create();

ptNom=part_type_create();
part_type_shape(ptNom,7);
part_type_size(ptNom,0.10,0.30,0.03,0.67);
part_type_scale(ptNom,0.46,0.68);
part_type_orientation(ptNom,0,360,2.54,0,0);
part_type_direction(ptNom,0,360,0,17.90);
part_type_speed(ptNom,1,10,-0.40,0);
part_type_gravity(ptNom,0,0);
part_type_color3(ptNom,255,215,128);
part_type_alpha3(ptNom,1,0.80,0.60);
part_type_blend(ptNom,0);
part_type_life(ptNom,10,20);

part_system_depth(psmain, -1000);
