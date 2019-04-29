
//If there will come 4 states, then use thenext row, Else 3 is ok
//hpState = ceil(health / (100/3)) // Remains an integer portraying a state !IF there will befome 3 states!
hpState = ceil(health / 25); // Remains an integer portraying a state
if (health<=0) { isAlive = false }
//show_debug_message("state"+string(hpState))
switch(hpState) {
    case(4):
        sprRightWalking = sprPlayerWalk1
        sprIdling = sprPlayerIdle1
        sprHeadbutting = sprPlayerHb1
        sprKicking = sprPlayerKick1
        sprHit = sprPlayerHit1
    break;
    case(3):
        sprRightWalking = sprPlayerWalk2
        sprIdling = sprPlayerIdle2
        sprHeadbutting = sprPlayerHb2
        sprKicking = sprPlayerKick2
        sprHit = sprPlayerHit2
    break;
    case(2):   //Dummy value for the moment
        sprRightWalking = sprPlayerWalk3
        sprIdling = sprPlayerIdle3
        sprHeadbutting = sprPlayerHb3
        sprKicking = sprPlayerKick3
        sprHit = sprPlayerHit3
    break;
    case(1):
        sprRightWalking = sprPlayerWalk4
        sprIdling = sprPlayerIdle4
        sprHeadbutting = sprPlayerHb4
        sprKicking = sprPlayerKick4
        sprHit = sprPlayerHit4
    break;
    default: break;
}
