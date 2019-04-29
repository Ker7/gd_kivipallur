// ----- K I C K -------------
if (isKicking) {
    if (!audio_is_playing(sndLegSwing)) { audio_play_sound(sndLegSwing,20,false); }
    // Kick collision
    with ammo {
        if ammoPlayerActionCheck(player.ACTION_RANGE){
            if other.spriteSub > 2 && other.spriteSub < 7 { // sync hit with certain subframes
                hasHit = true;
                obj_crowd.ticksToCheer += 40
                speed = 10;
                direction = 75+random(15) //TODO add some random 
                health-=1
                score += 5 * ( abs(100-health)/100 ) + 1 ; 
                audio_play_sound(sndCrowdCheerLeg, 20, false);
                playPainSound();
                playBloodHit();
            }
        }
    }
}

// ----- HEADBUTT -----
if (isHeadbutting) {
    // collision
    with ammo {
        if ammoPlayerActionCheck(player.ACTION_RANGE) {
            if other.spriteSub > 1 && other.spriteSub < 6 { // sync hit with certain subframes
                hasHit = true;
                obj_crowd.ticksToCheer += 40
                speed = 13;
                direction = 45 +random(15)
                health-=1
                score += 10 * ( abs(100-health)/100 ) + 1 ; 
                audio_play_sound(sndCrowdCheerHead, 20, false)
                playPainSound();
                playBloodHit();
            }
        }
    }
}

// --- Common hits
if (isKicking || isHeadbutting) {
    // Sprite
    spriteSub += 1/room_speed*16
    if spriteSub >= image_number {  resetToPlayerIdle()  }
}
