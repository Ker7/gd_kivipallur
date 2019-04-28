with (instance_position(mouse_x, mouse_y, btn_newgame)) {

   if (mouse_check_button_pressed(mb_left) )
   {
      show_debug_message("Starting game")
      room_goto(room0)
   }
}

with (instance_position(mouse_x, mouse_y, btn_quit)) {

   if (mouse_check_button_pressed(mb_left) )
   {
      show_debug_message("Exiting game")
        game_end();
   }
}
