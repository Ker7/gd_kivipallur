// Step komm

global.c += 1;
ct += 1/room_speed;

if (keyboard_check(vk_numpad1) && room_speed > 1) {room_speed-=1;}
if (keyboard_check(vk_numpad2)) {room_speed+=1; }
