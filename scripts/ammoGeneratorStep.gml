// event scheduled for this step?

// Schedule new events if there are none!
if ds_list_empty(event_id_list){
    //How many to schedule?
    sys.difficulty = max(1, (global.c div 1000))
    var ammo_count = irandom_range(1,2) * sys.difficulty
    //show_debug_message("Difficulty= "+ string(difficulty_mod) +", Scheduling " + string(ammo_count) + " new events");
    for (var i = 0; i < ammo_count; i++;){
        script_execute(scheduleOneEvent, ammo, 100, 200);
    }
}


// Spawn ammo if an event has been scheduled for this timestamp
if (ds_list_find_value(event_id_list, 0) <= global.c){
    //show_debug_message("New event");
    
    var rand = random(1);
    var type;
    
    if rand >= 0.66 { type = ammo1 }
    else { type = ammo };
    script_execute(spawnAmmoInstance, type);
    //remove from datastructures
    ds_list_delete(event_id_list, 0)
    ds_map_delete(event_map, global.c)    
    
    
}
