// Step komm

global.c += 1;
ct += 1/room_speed;

if (keyboard_check(vk_numpad1) && room_speed > 1) {room_speed-=1;}
if (keyboard_check(vk_numpad2)) {room_speed+=1; }

// Delay creation of ammo generator - wait for game start sound to finish
if !audio_is_playing(sndGameStart) && !instance_exists(ammoGenerator) {
    instance_create(0,0,ammoGenerator)
    } 

