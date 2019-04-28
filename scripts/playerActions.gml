// ----- K I C K -------------
if (isKicking) {
    // Sprite
    spriteSub += 1/room_speed*16
    if spriteSub >= image_number {  resetToPlayerIdle()  }

    // Kick collision
    with instance_nearest(x, y-50, ammo) {
        dist = distance_to_object( other ); //how far is the nearest ammo?
        if dist <= 80 && !hasHit && !hitByPlayer && targetLane == player.currentLane {
            if other.spriteSub > 2 && other.spriteSub < 7 { // sync hit with certain subframes

                hitByPlayer = true;
                obj_crowd.ticksToCheer += 30
                speed = 10;
                direction = 75+random(15) //TODO add some random 
                score += 5;
            }
        }
    }
}

// ----- HEADBUTT -----
if (isHeadbutting) {
    // Sprite
    spriteSub += 1/room_speed*16
    if spriteSub >= image_number {  resetToPlayerIdle()  }
        
    // collision
    with instance_nearest(x, y-50, ammo) {
        dist = distance_to_object( other ); //how far is the nearest ammo?
        if dist <= 80 && !hasHit && !hitByPlayer && targetLane == player.currentLane {
            if other.spriteSub > 1 && other.spriteSub < 6 { // sync hit with certain subframes

                hitByPlayer = true;
                
                obj_crowd.ticksToCheer += 30
                speed = 15;
                direction = 45 //TODO add some random 
                score += 10;
            }
        }
    }
}
