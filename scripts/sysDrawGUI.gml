// Draw 

    draw_set_font(font1);
draw_text(1,1,"
c: "+ string(global.c) +"
ct: "+ string(ct) +"
FPS: "+ string(fps) +"
FPSreal: "+ string(fps_real) +"
instances: "+ string(instance_count) +"
health: "+ string(health) +"
playerImageindex: "+ string(player.image_index) +"
ticks: "+ string(player.ticksKnockedOut) +"");

//player.ticksKnockedOut

// Healthbar
draw_healthbar( 300, room_height-50, room_width-300, room_height-15, 
    health,c_white,c_red,c_red,180,true,true);

    draw_set_font(font0);
// Score
draw_text_transformed_colour(
    20, room_height-50,
    "Feim: " + string ( score),
    2,2,0,
    0,0,200,255,
    1
    )
    
// Difficulty
draw_text_transformed_colour(
    room_width-200, room_height-50,
    "Tase: " + string ( sys.difficulty),
    2,2,0,
    0,0,255,200,
    1
    )
