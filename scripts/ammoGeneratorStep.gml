// event scheduled for this step?

// Schedule new events (new wave) if there are none!
sys.waveInProgress = sys.waveCooldown == sys.INTER_WAVE_PAUSE
if ds_list_empty(event_id_list)  {
    
    if (sys.waveCooldown > 0){
        
//        show_debug_message("Cooling down Wave" + string(sys.waveCooldown))
        sys.waveCooldown -= 1
    } else {
        // Cooldown over, spawn new ammo
    
        sys.difficulty += 1
        var ammo_count = sys.difficulty
               

        //How many to schedule?        
        for (var i = 0; i < ammo_count; i++;){
            scheduleOneEvent(ammo, i*(WAVE_TIME_PER_ROCK+WAVE_ROCK_BUFFER), WAVE_TIME_PER_ROCK)
            //script_execute(scheduleOneEvent, ammo, INTER_WAVE_PAUSE, INTER_WAVE_PAUSE + (WAVE_DURATION * sys.difficulty));
        }
        // set cooldown which is used once above events finish
        sys.waveCooldown = sys.INTER_WAVE_PAUSE
    
    } 
} else {
    
}

    // Spawn ammo if an event has been scheduled for this timestamp
    var nextEventTime = ds_list_find_value(event_id_list, 0)
    if (nextEventTime <= global.c){
    //show_debug_message("New event");
    
    makeRandomStone();
    //remove from datastructures
    ds_list_delete(event_id_list, 0)
    ds_map_delete(event_map, nextEventTime)  
   }
