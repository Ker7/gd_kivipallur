// Create Ammo

isFlying = true;
fadeCounter = 2;    //Alpha 1 can be seen, will start to fade after landed
hasHit = false;
hasLanded = false;

gravity = 0.24;
direction = 112-random(10);
speed = 14+random(1);
rot = 0;
rotspeed = random_range(-4, 4);
        
glow=false;

//targetLane = 2;//irandom(2);
targetLane = irandom(2);
//stoneSize = 2; //if stonesize
stoneSize = irandom(2); //if stonesize
switch(stoneSize) {
    case(0): mask_index = sprAmmoMaskStone0; break;
    case(1): mask_index = sprAmmoMaskStone1; break;
    case(2): mask_index = sprAmmoMaskStone2; break;
    default: break;
}

cnt = 0 //Second counter for ammo age, if age +1s : valid for earth collision check

// Shadow Making
dist__var = 8;
for (i = 0; i < 8; i += 1) {
shadX[i] = -dist__var*1.1+random(dist__var*2.2)
shadY[i] = -dist__var+random(dist__var*1.8)
}

//debugging
ddleft = 0
ddtop = 16
ddx = -33
ddy = 16
