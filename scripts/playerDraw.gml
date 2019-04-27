// Draw 
draw_sprite_ext(mainSprite,spriteSub,x,y,xscale,yscale,0,c_white,1);



draw_text(x,y,string(x-xprevious));
draw_healthbar( x-((73)*2.5*xscale),
                y-((64)*2.5*xscale),
                x-((73+health)*2.5*xscale),
                y-((58)*2.5*xscale),
                iq,c_white,c_red,c_blue,0,true,true);
