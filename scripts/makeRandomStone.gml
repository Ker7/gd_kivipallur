var rand = random(1);
var type;

type = ammo                             // stone
if rand >= 0.85 { type = ammo1 }        // soccer
if rand >= 0.97 { type = ammo2 }        // anvil

return script_execute(spawnAmmoInstance, type);
