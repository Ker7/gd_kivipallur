
depth = -laneY[targetLane]

if (direction>135) {
    path_speed = path_speed * 1.02
    } else { 
    path_speed = path_speed * 0.99
}

if (path_position = 1) {isFlying = 0}

if (x<640) {
    if y>laneY[targetLane] {
        speed = 0;
        gravity = 0;
        isFlying = false;
    }
}

if (!isFlying) { fadeCounter -= 0.01 } 
