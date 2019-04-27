// Step

// After keypress reset subimage and mabye change direction of sprite /2 sides
if (keyboard_check_pressed( btnMoveRight ) || keyboard_check_released( btnMoveRight ))  { spriteSub = 0; mainSprite = sprRightWalking;}
if (keyboard_check_pressed( btnMoveLeft ) || keyboard_check_released( btnMoveLeft ))   { spriteSub = 0; mainSprite = sprLeftWalking;}
if (keyboard_check_pressed( btnMoveUp ) || keyboard_check_released( btnMoveUp ))     { spriteSub = 0}
if (keyboard_check_pressed( btnMoveDown ) || keyboard_check_released( btnMoveDown ))   { spriteSub = 0}

// Move player
if keyboard_check( btnMoveRight ) { x += playerMoveSpeed;}
if keyboard_check( btnMoveLeft ) { x -= playerMoveSpeed;}
if keyboard_check( btnMoveUp ) { yspd -= 1;}
if keyboard_check( btnMoveDown ) && y<600{ yspd += 1;}

if (!keyboard_check( btnMoveRight ) && 
    !keyboard_check( btnMoveLeft ) && 
    !keyboard_check( btnMoveUp ) &&
    !keyboard_check( btnMoveDown )) {isWalking = false } else {isWalking = true}

if (isWalking) { spriteSub = animationSpeed * sys.ct} //If walking -> variable that defines to GIF iomage counter aka Subimage

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


//Testarea DEBUG BUILD STUFF
if keyboard_check_pressed(ord('S')) {
    with (instance_create(850, 639-32-64, ammo1)) {
        path_start(path0, 8 ,path_action_stop, false);
        path_scale = ((85+random(30))/100);
    }
}
