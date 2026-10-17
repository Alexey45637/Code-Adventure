Room_plains = [Room_g1, Room_g2, Room_g3, Room_g4, Room_g5];
Room_desert = [Room_d1, Room_d2, Room_d3, Room_d4];
Room_lava = [Room_b1, Room_b2, Room_b3, Final_room];

count_kc = 0;
type_kc = noone;
empty_kc = noone;

in_plains = array_contains(Room_plains, room);
in_desert = array_contains(Room_desert, room);
in_lava = array_contains(Room_lava, room);


if (in_plains) {
    count_kc = 1;
	sphere_biome = 1;
    type_kc = kc_plains_ob;
	empty_kc = kc_open_plains_sp;
}
else if (in_desert) {
    count_kc = 2;
	sphere_biome = 2;
    type_kc = kc_desert_ob;
	empty_kc = kc_open_desert_sp;
}
else if (in_lava) {
    count_kc = 3;
	sphere_biome = 3;
    type_kc = kc_lava_ob;
	empty_kc = kc_open_lava_sp;
}

if (type_kc != noone) {
    for (var i = 0; i < count_kc; i++) {
        instance_create_layer(x, y, "Instances", type_kc);
    }
}