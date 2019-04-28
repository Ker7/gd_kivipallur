// arg0 = type

AMMO_X = 944;
AMMO_Y_MIN = 0;
AMMO_Y_MAX = 500;

show_debug_message("Spawning object: " + string(argument0));

var ammo_instance = instance_create(
    AMMO_X,
    global.lanes[1], // middle lane
    argument0
    );
//ammo_instance.gravity = 0.3;
//ammo_instance.direction = 135-random(40);
//ammo_instance.speed = 11+random(1);
// New down
ammo_instance.gravity = 0.24;
ammo_instance.direction = 112-random(10);
ammo_instance.speed = 14+random(1);
return ammo_instance;
