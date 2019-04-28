// Event Message
if (eventRenderCountdown > 0){

    eventRenderCountdown-=1;

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text_transformed_colour(
        room_width / 2,
        room_height / 2 ,
        eventText,
        3,3, 0,
        c_lime, c_lime, c_lime, c_lime,
        1)
}
