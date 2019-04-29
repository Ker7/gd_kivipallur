// Create Ammo

isFlying = true;
fadeCounter = 2;    //Alpha 1 can be seen, will start to fade after landed
heightAlphaDecrease = 0 //Stone is touching its targetY so no remove of transparency
hasHit = false;
hitByPlayer = false;
hasLanded = false;

gravity = 0.24;
//direction = 112-random(10);
//speed = 14+random(1);
direction = 110;
speed = 12+irandom(2)*1.5;

rot = 0;
rotspeed = random_range(-4, 4);
        
glow=false;

// sprite_index = 

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
dist_var = 8*stoneSize;
shadows = 12+(6*stoneSize)
for (i = 0; i < shadows; i += 1) {
    shadX[i] = -dist_var*1.1+random(dist_var*2.2)
//   shadY[i] = -dist_var+random(dist_var*1.8)
    shadY[i] = -(dist_var/2)+random(dist_var);
}

//debugging
ddleft = 0
ddtop = 16
ddx = -33
ddy = 16
