// Draw 
rot = 0
if (ticksKnockedOut > 0) { rot = 110} 
draw_sprite_ext(mainSprite,spriteSub,x,y,xscale,yscale,rot,c_white,1);

//draw_text(x,y,string(x-xprevious));

// Debug       
if debug_mode = true {
    draw_sprite_ext(mask_index,0,x,y,1,1,0,c_aqua,0.3);  
    //draw_sprite_ext(mask_index,0,x,y,1.06,1.06,0,c_aqua,0.5);  
    //draw_sprite_ext(mask_index,0,x,y,1.2,1.2,0,c_yellow,0.5); 
    
    // player kicking debug circle
    with playerActionPoint {
        // todo depth scale
        draw_circle_colour(x,y, player.ACTION_RANGE, c_green, c_green, true)
    }

    with ammo {
        if ammoPlayerActionCheck(player.ACTION_RANGE) {
            draw_circle(x, y, player.ACTION_RANGE, true)
        }        
    } 
}
