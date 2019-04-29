// event scheduled for this step?

// Schedule new events (new ave) if there are none!
if ds_list_empty(event_id_list){
    //How many to schedule?
    sys.difficulty += 1
    
    var ammo_count = sys.difficulty
    //show_debug_message("Difficulty= "+ string(difficulty_mod) +", Scheduling " + string(ammo_count) + " new events");
    for (var i = 0; i < ammo_count; i++;){
        script_execute(scheduleOneEvent, ammo, INTER_WAVE_PAUSE, INTER_WAVE_PAUSE + (WAVE_DURATION * sys.difficulty));
    }
    

}


// Spawn ammo if an event has been scheduled for this timestamp
if (ds_list_find_value(event_id_list, 0) <= global.c){
    //show_debug_message("New event");
    
    makeRandomStone();
    //remove from datastructures
    ds_list_delete(event_id_list, 0)
    ds_map_delete(event_map, global.c)    
    
    
}
