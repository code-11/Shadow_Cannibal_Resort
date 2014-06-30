SetWinCond();

audio_play_music(choose(snd_panic, snd_tribe, snd_sneak), true);

mySpeed=0;
maxSpeed=3;

image_index = 1;
image_speed = 0.2;

dartMax = 3;
darts = dartMax;

paperclips = 0;

captives = 0;

state = 0;
/*
    state:
    0 --> normal moving
    1 --> eating
*/

canBeSeen = true;

nomRange = 32;
nomTarget = -1;

dragRange = 32;
dragTarget = -1;

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
canShootTimerCap = 0.3 * room_speed;

spriteRevertTimer = -1;
spriteRevertTimerCap = 3 * room_speed;

canMelee = true;
canMeleeTimer = -1;
canMeleeTimerCap = 0.4 * room_speed;

winTimer = -1;
winTimerCap = 3 * room_speed;

loseTimer = -1;
loseTimerCap = 3 * room_speed;

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


