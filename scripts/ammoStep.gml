
depth = -global.lanes[targetLane]
cnt += 1/room_speed

if (direction>135) {
    path_speed = path_speed * 1.02
    } else { 
    path_speed = path_speed * 0.99
}

if (path_position = 1) {isFlying = 0}

if cnt>1 &&  y>global.lanes[targetLane] {
        speed = 0;
        gravity = 0;
        isFlying = false;
}

if (!isFlying) { fadeCounter -= 0.006; } 
if (fadeCounter < 0) {instance_destroy(); }
