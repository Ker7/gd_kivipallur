// arg0 - dist
return (
    distance_to_object( player.actionPoint ) <= argument0 &&
    x >= player.x &&
     !hasHit &&
     !hasLanded &&
     !hitByPlayer &&
     targetLane == player.currentLane
     )
