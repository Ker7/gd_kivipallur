// Draw 
draw_text(1,1,"
c: "+ string(global.c) +"
ct: "+ string(ct) +"
FPS: "+ string(fps) +"
FPSreal: "+ string(fps_real) +"
instances: "+ string(instance_count) +"");

// Healthbar
draw_healthbar( 
    300, room_height-40, room_width-300, room_height-20, 
    health,
    c_white,c_red,c_red,180,true,true);

// Score
draw_text_transformed_colour(
    50, room_height-45,
    "Score: $" + string ( score),
    2,2,0,
    0,0,200,255,
    1
    )
    
// Difficulty
draw_text_transformed_colour(
    room_width-200, room_height-45,
    "Stage: " + string ( sys.difficulty),
    2,2,0,
    0,0,255,200,
    1
    )
