// event scheduled for this step?



if (nextEvent == global.c){
    show_debug_message("New event");
    
    script_execute(spawnAmmoInstance, ammo);
    
    // Schedule another event
    nextEvent = script_execute(getTimestamp, 50, 150);
    
}
