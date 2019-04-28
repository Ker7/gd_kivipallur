// Create
room_speed = 60     // 60 FPS
global.c = 0        // Global count clock
ct = 0              // Global time clock

// Game Stats
ammoCount = 0       // Shots fired

// Lanes (For Players and Ammo)
global.laneYStep = 64
global.lanes[0] = 476
global.lanes[1] = global.lanes[0] + global.laneYStep
global.lanes[2] = global.lanes[1] + global.laneYStep

sys.difficulty = 0;

// World creation
obj_player = instance_create(200,600,player)

instance_create(0,0,ammoGenerator)
instance_create(0,0, eventListener)

obj_player.iq = 147;
obj_player.playerMoveSpeed = 4;

