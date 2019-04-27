// Create

playerMoveSpeed = 3 //Default value, reassigned in sys Creation

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
spriteSub = 0;
xscale = 1;
yscale = xscale;

yspd = 0;
