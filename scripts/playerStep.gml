// Step
depth = -y

// After keypress reset subimage and mabye change direction of sprite /2 sides
if (keyboard_check_pressed( btnMoveRight ) || keyboard_check_released( btnMoveRight ))  { spriteSub = 0;}
if (keyboard_check_pressed( btnMoveLeft ) || keyboard_check_released( btnMoveLeft ))   { spriteSub = 0;}
if (keyboard_check_pressed( btnMoveUp ) || keyboard_check_released( btnMoveUp ))     { spriteSub = 0}
if (keyboard_check_pressed( btnMoveDown ) || keyboard_check_released( btnMoveDown ))   { spriteSub = 0}

// Player Actions
if (keyboard_check_pressed( btnKick ) && isKicking == false){
    isWalking = false;
    isKicking = true;
    mainSprite = sprKicking;
    spriteSub = 0;    
}

if (keyboard_check_pressed( btnHeadbutt ) && isKicking == false && isHeadbutting == false){
    isWalking = false;
    isHeadbutting = true;
    mainSprite = sprHeadbutting;
    spriteSub = 0;    
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


// ----- K I C K -------------
if (isKicking) {
    // Sprite
    spriteSub += 1/room_speed*16
    
    if spriteSub >= image_number {
        isKicking = false;
        isWalking = false;
        mainSprite = sprRightWalking // switch back to default sprite
        spriteSub =  0;
    }
    
    
    // Kick collision
    with instance_nearest(x, y-50, ammo) {
        dist = distance_to_object( other ); //how far is the nearest ammo?
        if dist <= 80 && !hasHit && targetLane == player.currentLane {
            if other.spriteSub > 2 && other.spriteSub < 7 // sync hit with certain subframes
            speed = 10;
            direction = 75+random(15) //TODO add some random 
        }
    }
}

// ----- HEADBUTT -----
if (isHeadbutting) {
    show_debug_message("HEADBUTT")
    // Sprite
    spriteSub += 1/room_speed*16
    
    if spriteSub >= image_number {
        isHeadbutting = false;
        isWalking = false;
        mainSprite = sprRightWalking // switch back to default sprite
        spriteSub =  0;
    }
    
    // collision
    with instance_nearest(x, y-50, ammo) {
        dist = distance_to_object( other ); //how far is the nearest ammo?
        if dist <= 80 && !hasHit && targetLane == player.currentLane {
            if other.spriteSub > 2 && other.spriteSub < 7 // sync hit with certain subframes
            speed = 20;
            direction = 45 //TODO add some random 
        }
    }
}

xscale = 1-(abs(800-y)/800);
yscale = xscale;
playerMoveSpeed = 3*xscale;

with (ammo) {
    if (isFlying && !hasHit && targetLane == player.currentLane) {
        if (place_meeting(x-4, y+4, player)) {
        hasHit = true;
             
        var ammoDir = direction;
        // Blood splatter   
        repeat (8) {
            with instance_create(other.x, y, obj_Blood){
                depth = -1000;
                direction = 75+random(30);
                speed = 4+random(1);
                gravity = 0.5;
            }
        }
        
        // Player IQ decrease
        health -= 5;//TODO get from rock type
        
        
        //speed = 0;
        //gravity = 0;
        
        // Ammo movement
        
        direction = 68+random(10);
        speed = 5+random(1);
        gravity = 1;
        }
    }
}
switch(currentLane) {
case(0): mask_index = sprPlayerMask0; break;
case(1): mask_index = sprPlayerMask1; break;
case(2): mask_index = sprPlayerMask2; break;
default: break;
}


//Testarea DEBUG BUILD STUFF
if (debug_mode) {

// Shootingh so far @tomoveee
if keyboard_check_pressed( btnSend ) { 
    yo[s] = instance_create(x+400,y,ammo)
    yo[s].gravity = 0.3;
    yo[s].direction = 135-random(15);
    yo[s].speed = 11+random(1);
    s+=1;
    sys.ammoCount += 1;
}

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
}
