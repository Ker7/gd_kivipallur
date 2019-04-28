// ----- K I C K -------------
if (isKicking) {
    // Sprite
    spriteSub += 1/room_speed*16
    if spriteSub >= image_number {  resetToPlayerIdle()  }

    // Kick collision
    with ammo {
        if ammoPlayerActionCheck(player.ACTION_RANGE){
            if other.spriteSub > 2 && other.spriteSub < 7 { // sync hit with certain subframes

                hitByPlayer = true;
                obj_crowd.ticksToCheer += 40
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
    with ammo {
        if ammoPlayerActionCheck(player.ACTION_RANGE) {
            if other.spriteSub > 1 && other.spriteSub < 6 { // sync hit with certain subframes
                hitByPlayer = true;
                
                obj_crowd.ticksToCheer += 40
                speed = 15;
                direction = 45 //TODO add some random 
                score += 10;
            }
        }
    }
}
