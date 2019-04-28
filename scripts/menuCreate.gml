// center aligned (horizontally vertically)
btnNewgame = instance_create(
    (room_width - sprite_get_width(spr_newgame)) / 2 ,
    room_height * 0.33 - sprite_get_height(spr_newgame)/2,
    btn_newgame)
// disable anims
btnNewgame.image_speed = 0;
btnNewgame.image_index = 0;

btnExitgame = instance_create(
    (room_width - sprite_get_width(spr_exit)) / 2,
    room_height*0.66 - sprite_get_height(spr_exit) / 2,
    btn_quit)
// disable anims
btnExitgame.image_speed = 0;
btnExitgame.image_index = 0;

