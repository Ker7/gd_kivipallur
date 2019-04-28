// Create

actionPoint = instance_create(x,y, playerActionPoint)
ACTION_RANGE = 50
score = 0;
health = 100;
playerMoveSpeed = 3 //Default value, reassigned in sys Creation
currentLane = 1 //index: [0..2]

y = global.lanes[currentLane]


// keys
btnMoveRight = vk_right;
btnMoveLeft = vk_left;
btnMoveUp = vk_up;
btnMoveDown = vk_down;
btnKick = ord('Z')
btnHeadbutt = ord('X')
//btnPunch = ord('X') TODO: consider to remove


btnSend = vk_space;

s=0                     //counter for ammo shots fired //unnecissary

sprRightWalking = sprPlayerRW;  //Player skin init
//sprLeftWalking = sprPlayerLW;

sprKicking = sprKickR;
sprHeadbutting = sprPlayerRHeadHit;

isKicking = false;
isHeadbutting = false;
isWalking = false;          //For playing an animation or hold still subimage 0
isFacingRight = true;       // for fliping side of image left/right
ticksKnockedOut = 0 // how many ticks the player stays knocked out
animationSpeed = 16    // * [n] - 1 frame per second, 2 - frames per second, floating point

//Sprite Part
mainSprite = sprite_index; 
//mask_index = sprPlayerMask; 
switch(currentLane) {
case(0): mask_index = sprPlayerMask0; break;
case(1): mask_index = sprPlayerMask1; break;
case(2): mask_index = sprPlayerMask2; break;
default: break;
}
spriteSub = 0;
xscale = 1;
yscale = xscale;

yspd = 0;
