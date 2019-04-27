// Draw 
draw_sprite_ext(mainSprite,spriteSub,x,y,xscale,yscale,0,c_white,1);



draw_text(x,y,string(x-xprevious));
draw_healthbar( x-((73)*2.5*xscale),
                y-((64)*2.5*xscale),
                x-((73+health)*2.5*xscale),
                y-((58)*2.5*xscale),
                iq,c_white,c_red,c_blue,0,true,true);
                
// Score
draw_text_transformed_colour(
    20, room_height-50,
    "Score: $" + string ( score),
    2,2,0,
    0,0,200,255,
    1
    )

         
// Debug       
//if debug_mode = true {
    draw_sprite_ext(mask_index,0,x,y,1,1,0,c_aqua,0.3);  
    //draw_sprite_ext(mask_index,0,x,y,1.06,1.06,0,c_aqua,0.5);  
    //draw_sprite_ext(mask_index,0,x,y,1.2,1.2,0,c_yellow,0.5);  
//}
