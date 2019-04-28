with (ammo) {
    if (isFlying && !hasHit && targetLane == player.currentLane) {
        if (place_meeting(x-4, y+4, player)) {
        hasHit = true;
             
        var ammoDir = direction;
        // Blood splatter   
        bloodSpawn(8) // 8 splatters
        
        // knockout
        if stoneSize > 0 {
            playerKnockout()
        }
        
        // Player IQ decrease
        health -= 5;//TODO get from rock type
               
        // Ammo movement
        direction = 68+random(10);
        speed = 5+random(1);
        gravity = 1;
        }
    }
}
