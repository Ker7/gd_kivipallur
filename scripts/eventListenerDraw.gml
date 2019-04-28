// Event Message
if (eventRenderCountdown > 0){

    eventRenderCountdown-=1;

    

    draw_text_transformed_colour(
        room_width / 2,
        room_height / 2 ,
        eventText,
        3,3, 0,
        c_lime, c_lime, c_lime, c_lime,
        1)
}
