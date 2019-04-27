// Step

// After keypress reset subimage and mabye change direction of sprite /2 sides
if (keyboard_check_pressed( btnMoveRight ) || keyboard_check_released( btnMoveRight ))  { spriteSub = 0; mainSprite = sprRightWalking;}
if (keyboard_check_pressed( btnMoveLeft ) || keyboard_check_released( btnMoveLeft ))   { spriteSub = 0; mainSprite = sprLeftWalking;}
if (keyboard_check_pressed( btnMoveUp ) || keyboard_check_released( btnMoveUp ))     { spriteSub = 0}
if (keyboard_check_pressed( btnMoveDown ) || keyboard_check_released( btnMoveDown ))   { spriteSub = 0}

// Move player
if keyboard_check( btnMoveRight ) { x += playerMoveSpeed;}
if keyboard_check( btnMoveLeft ) { x -= playerMoveSpeed;}
if keyboard_check( btnMoveUp ) { y -= playerMoveSpeed;}
if keyboard_check( btnMoveDown ) && y<600{ y += playerMoveSpeed;}

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
