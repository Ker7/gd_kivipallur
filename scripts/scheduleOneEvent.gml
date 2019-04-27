//Schedule a new ammo event, return created even timestamp
// arg0 - object to schedule
// an ammo event is uniquely identified by its timestamp in event_id_list and event_map
ammoEvent = script_execute(getTimestamp, 100, 200);


ds_list_add(event_id_list, ammoEvent);
ds_map_add(event_map, ammoEvent, argument0);
ds_list_sort(event_id_list, true);


show_debug_message("Created new event at " + string(ammoEvent));

show_debug_message("Earliest queued event is " + string(ds_list_find_value(event_id_list, 0)));

return ammoEvent;
