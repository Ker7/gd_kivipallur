//get a random global timestamp in the future
//arg0 - minimum_delay
//arg1 - max_delay

var newTime = irandom_range(argument0, argument1);
return global.c + newTime;
