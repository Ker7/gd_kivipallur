//Draw The Shadow
//draw_sprite_ext(sprAmmoShadow1,0,x+128,laneY[targetLane],1,1,1,c_black,0.4)  
for (i = 0; i < 4; i += 1) {
    draw_sprite_ext(sprAmmoShadow1,0,x+shadX[i],global.lanes[targetLane]+shadY[i],1,1,1,c_white,fadeCounter-1)
}
draw_sprite_ext(sprAmmo1,stoneSize,x,y,1,1,sys.ct*3,c_white,fadeCounter); 

// Debug 
if (debug_mode) {
draw_sprite_ext(mask_index,0,x,y,1,1,0,c_aqua,0.5); 
draw_text(x+42,y+64,"hasHit"+string(hasHit)+"
targetLane"+string(targetLane)+"
SAME AS PLAYER?"+string(targetLane==player.currentLane)); 
}

// draw_text(x+32,y+92,"vspeed: "+string(vspeed)+"targetLane"+string(targetLane))
