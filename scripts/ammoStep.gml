
depth = -global.lanes[targetLane]
cnt += 1/room_speed
rot += rotspeed

if (direction>135) {
    path_speed = path_speed * 1.02
    } else { 
    path_speed = path_speed * 0.99
}

if (path_position = 1) {isFlying = 0}

// Landing on ground
if cnt>1 &&  y>global.lanes[targetLane] {
        speed = 0;
        gravity = 0;
        isFlying = false;
        hasLanded = true;
        rotspeed = 0;
        rot = 0;
}

if (!isFlying || hasHit) { fadeCounter -= 0.006; } 
if (fadeCounter < 0) {instance_destroy(); }
/*
if keyboard_check(vk_numpad7) { ddtop -= 1; }
if keyboard_check(vk_numpad8) { ddtop += 1; }
if keyboard_check(vk_numpad4) { ddx -= 1 }
if keyboard_check(vk_numpad5) { ddx += 1 }

if keyboard_check(ord('I')) { ddleft -= 1; }
if keyboard_check(ord('O')) { ddleft += 1; }
if keyboard_check(ord('K')) { ddy -= 1 }
if keyboard_check(ord('L')) { ddy += 1 }
*/
