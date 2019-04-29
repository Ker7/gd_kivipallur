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

sys.difficulty = 0;
sys.waveCooldown = 100;

// World creation
obj_player = instance_create(200,600,player)
objCrowd = instance_create(0,0,obj_crowd)

//Loop the Mellow buzz
audio_play_sound(sndCrowdBack,1,true);
audio_play_sound(sndGameStart,1,false);

instance_create(0,0,ammoGenerator)
instance_create(0,0, eventListener) // can be used to generate UI messages when difficulty changes etc
instance_create(0,0, jurtoQuoter);

//obj_player.iq = 147; OBSOLETE
obj_player.playerMoveSpeed = 5;

