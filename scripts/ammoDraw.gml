//Draw The Shadow
//draw_sprite_ext(sprAmmoShadow1,0,x+128,laneY[targetLane],1,1,1,c_black,0.4)  
for (i = 0; i < 4; i += 1) {
    draw_sprite_ext(sprAmmoShadow1,0,x+shadX[i],global.lanes[targetLane]+shadY[i],1,1,1,c_white,fadeCounter-1)
}
if (hasLanded) { 
    draw_sprite_general(sprite_index, stoneSize, ddleft, ddtop, sprite_width, sprite_height, x+ddx,y+ddy, 1, -1, rot, c_white, c_white, c_white, c_white, fadeCounter);
  } else {
    draw_sprite_ext(sprite_index,stoneSize,x,y,1.1,1.1,rot,c_white,1); 
}

// Debug 
if (debug_mode) {
//draw_sprite_part_ext(sprite,    subimg,     left,   top,    width,          height,         x,  y,  xscale, yscale, colour,     alpha);
//draw_sprite_part_ext(sprAmmo1,  stoneSize,  32,      32,     sprite_width,   sprite_height,  x,  y,  1,      -1,     c_white,    fadeCounter);
  
  //draw_sprite_part_ext(sprAmmo1,  stoneSize,  ddleft,  ddtop,  sprite_width,   sprite_height,  x+ddx,y+ddy,1,  -1,     c_white,    fadeCounter);
  //draw_sprite_general(sprAmmo1, stoneSize, ddleft, ddtop, sprite_width, sprite_height, x+ddx,y+ddy, q, -1, rot, c_white, c_white, c_white, c_white, 1);

//draw_sprite_ext(mask_index,0,x,y,1,1,0,c_aqua,0.5); 
draw_text(x+42,y+64,
"drawId: "+string(id)
//+"targetLane"+string(targetLane)
//+"SAME AS PLAYER?"+string(targetLane==player.currentLane)
//+"var sprite_height"+string(sprite_height)+"var ddl"+string(ddleft)+"var ddt"+string(ddtop)+"var ddx+"+string(ddx)+"var ddy+"+string(ddy)

); 
}

// draw_text(x+32,y+92,"vspeed: "+string(vspeed)+"targetLane"+string(targetLane))
