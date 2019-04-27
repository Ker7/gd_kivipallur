// Step

if keyboard_check( btnMoveRight ) { x += playerMoveSpeed}
if keyboard_check( btnMoveLeft ) { x -= playerMoveSpeed}
if keyboard_check( btnMoveUp ) { y -= playerMoveSpeed}
if keyboard_check( btnMoveDown ) { y += playerMoveSpeed}

if keyboard_check( btnSend ) { 
    yo[s] = instance_create(x+400,y,ammo)
    yo[s].gravity = 0.3;
    yo[s].direction = 135-random(40);
    yo[s].speed = 8+random(4);
    s+=1;
}
