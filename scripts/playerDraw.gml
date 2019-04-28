// Draw 
draw_sprite_ext(mainSprite,spriteSub,x,y,xscale,yscale,0,c_white,1);

//draw_text(x,y,string(x-xprevious));


// Debug       
if debug_mode = true {
    draw_sprite_ext(mask_index,0,x,y,1,1,0,c_aqua,0.3);  
    //draw_sprite_ext(mask_index,0,x,y,1.06,1.06,0,c_aqua,0.5);  
    //draw_sprite_ext(mask_index,0,x,y,1.2,1.2,0,c_yellow,0.5); 
    
    // player kicking debug circle
    with playerActionPoint {
    // todo depth scale
        draw_ellipse_colour(x-50,y-100,x+50,y+50,c_green,c_green, true)


    }
    
    with instance_nearest(x, y-80, ammo) {
        
        if ammoPlayerActionCheck(80) {
            draw_circle(x, y-80, 80, true)
        }        
    } 
}
