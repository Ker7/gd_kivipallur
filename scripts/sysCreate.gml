// Create
room_speed = 60     // 60 FPS
global.c = 0        // Global count clock
ct = 0              // Global time clock

// Game Stats
ammoCount = 0       // Shots fired

// Lanes (For Players and Ammo)
global.laneYStep = 84
global.lanes[2] = 604;                                      // 476
global.lanes[1] = global.lanes[2] - global.laneYStep        // 540
global.lanes[0] = global.lanes[1] - global.laneYStep        // 604

sys.difficulty = 1;

// World creation
obj_player = instance_create(200,600,player)
instance_create(200,600,ammoGenerator)

obj_player.iq = 147;
obj_player.playerMoveSpeed = 4;

