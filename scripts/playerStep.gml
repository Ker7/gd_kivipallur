// Step
depth = -y

// After keypress reset subimage and mabye change direction of sprite /2 sides
if (keyboard_check_pressed( btnMoveRight ) || keyboard_check_released( btnMoveRight ))  { spriteSub = 0; mainSprite = sprRightWalking;}
if (keyboard_check_pressed( btnMoveLeft ) || keyboard_check_released( btnMoveLeft ))   { spriteSub = 0; mainSprite = sprLeftWalking;}
if (keyboard_check_pressed( btnMoveUp ) || keyboard_check_released( btnMoveUp ))     { spriteSub = 0}
if (keyboard_check_pressed( btnMoveDown ) || keyboard_check_released( btnMoveDown ))   { spriteSub = 0}


// Player Actions


if (keyboard_check_pressed( btnKick ) && isKicking == false){
    isWalking = false;
    isKicking = true;
    mainSprite = sprKickR;
    spriteSub = 0;    
}

with (ammo) {
    if (isFlying && !hasHit && targetLane == player.currentLane) {
        if (place_meeting(x-4, y+4, player)) {
        hasHit = true;
        //speed = 0;
        //gravity = 0;
        
        direction = 68+random(10);
        speed = 5+random(1);
        gravity = 1;
        }
    }
}


// Move player

if keyboard_check( btnMoveRight ) { x += playerMoveSpeed;}
if keyboard_check( btnMoveLeft ) { x -= playerMoveSpeed;}
if keyboard_check_pressed( btnMoveUp) && currentLane > 0 {
    y -= global.laneYStep
    currentLane -= 1 
    }
if keyboard_check_pressed( btnMoveDown ) && currentLane < 2  { 
    y += global.laneYStep
    currentLane +=1
    }

if (!keyboard_check( btnMoveRight ) && 
    !keyboard_check( btnMoveLeft ) &&
    !keyboard_check( btnMoveUp ) &&
    !keyboard_check( btnMoveDown )) {isWalking = false } else {isWalking = true}

if (isWalking) { spriteSub = animationSpeed * sys.ct} //If walking -> variable that defines to GIF image counter aka Subimage

if (isKicking) {
    spriteSub += 1/room_speed*16
    
    if spriteSub >= 11 {
        isKicking = false;
        isWalking = false;
        // switch back to default sprite
        mainSprite = sprRightWalking
        spriteSub =  0;
    }
}

xscale = 1-(abs(800-y)/800);
yscale = xscale;
playerMoveSpeed = 3*xscale;

// Shootingh so far @tomoveee
if keyboard_check_pressed( btnSend ) { 
    yo[s] = instance_create(x+400,y,ammo)
    yo[s].gravity = 0.3;
    yo[s].direction = 135-random(15);
    yo[s].speed = 11+random(1);
    s+=1;
    sys.ammoCount += 1;
}


switch(currentLane) {
case(0): mask_index = sprPlayerMask0; break;
case(1): mask_index = sprPlayerMask1; break;
case(2): mask_index = sprPlayerMask2; break;
default: break;
}


//Testarea DEBUG BUILD STUFF
if (keyboard_check(ord('D')) || keyboard_check_pressed(ord('S'))) {
    with (instance_create(850, 639-32-64, ammo)) {
        sys.ammoCount += 1;
        //path_start(path0, 8 ,path_action_stop, false);
        //path_scale = ((85+random(30))/100);
    }
}
if (keyboard_check(vk_numpad3)) {
    with (instance_create(850, 639-32-64, ammo)) {
    targetLane = 2;        sys.ammoCount += 1;
    }
}
if (keyboard_check(vk_numpad6)) {
    with ( instance_create(850, 639-32-64, ammo)) {
    targetLane = 1;        sys.ammoCount += 1;
    }
}
if (keyboard_check(vk_numpad9)) {
    with instance_create(850, 639-32-64, ammo){
    targetLane = 0;       sys.ammoCount += 1;
    }
}

if keyboard_check(ord('M')) {
    score += 5;
}
