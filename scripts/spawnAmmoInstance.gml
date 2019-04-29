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
ammo_instance.direction = 110;
ammo_instance.speed = 12+irandom(2)*1.5;

obj_Imbi.image_speed = (player.animationSpeed/room_speed)
return ammo_instance;
