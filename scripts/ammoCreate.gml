// Create Ammo

isFlying = true;
fadeCounter = 2;    //Alpha 1 can be seen, will start to fade after landed
hasHit = false;

        gravity = 0.24;
        direction = 112-random(10);
        speed = 14+random(1);
        
targetLane = irandom(2);
stoneSize = irandom(2); //if stonesize
mask_index = sprite_index;

//targetLane = irandom(3);
        laneY[0] = 476
        laneY[1] = 524
        laneY[2] = 572
        
dist__var = 8;
for (i = 0; i < 8; i += 1) {
shadX[i] = -dist__var*1.1+random(dist__var*2.2)
shadY[i] = -dist__var+random(dist__var*1.8)
}
