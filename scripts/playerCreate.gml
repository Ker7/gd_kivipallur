// Create
score = 0;
playerMoveSpeed = 3 //Default value, reassigned in sys Creation
currentLane = 1 //index: [0..2]

y = global.lanes[currentLane]


// keys
btnMoveRight = vk_right;
btnMoveLeft = vk_left;
btnMoveUp = vk_up;
btnMoveDown = vk_down;

btnKick = vk_control;
btnPunch = vk_lalt;
btnHeadbutt = vk_shift;

btnSend = vk_space;

s=0                     //counter for ammo shots fired //unnecissary

sprRightWalking = sprPlayerRW;  //Player skin init
sprLeftWalking = sprPlayerLW;
isWalking = false;          //For playing an animation or hold still subimage 0
isFacingRight = true;       // for fliping side of image left/right
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
