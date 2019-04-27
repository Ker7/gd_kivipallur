show_debug_message("Init AmmoGen");

// init event data structures
event_id_list = ds_list_create();
event_map = ds_map_create();


script_execute(scheduleOneEvent, ammo, 100, 150);



