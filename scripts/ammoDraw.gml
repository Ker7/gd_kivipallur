

//Draw The Shadow
//draw_sprite_ext(sprAmmoShadow1,0,x+128,laneY[targetLane],1,1,1,c_black,0.4)  
for (i = 0; i < 8; i += 1) {
    draw_sprite_ext(sprAmmoShadow1,0,x+shadX[i],laneY[targetLane]+shadY[i],1,1,1,c_black,0.6)
}
draw_sprite_ext(sprAmmo1,global.c*isFlying,x,y,1-(0.3*stoneSize),1-(0.3*stoneSize),0,c_white,1); 
draw_sprite_ext(mask_index,0,x,y,1,1,0,c_aqua,0.5);  
// draw_text(x+32,y+92,"vspeed: "+string(vspeed)+"targetLane"+string(targetLane))
