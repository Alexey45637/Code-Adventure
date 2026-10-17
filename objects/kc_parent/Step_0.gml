var _hero = instance_find(Hero_Ob, 0);
hero_nearby = false;
dot_map = dot_kc_sp;
if (_hero != noone) {
    var _dist = point_distance(x, y, _hero.x, _hero.y);
    hero_nearby = (_dist <= interact_radius);
}

if (hero_nearby && keyboard_check_pressed(ord("E")) && !get_kc) {
    get_kc = true;
    sprite_index = kc_spawner_ob.empty_kc;

    switch (kc_spawner_ob.sphere_biome) {
        case 1:
            game_data_ob.count_sphere_plains += 1;
            break;

        case 2:
            game_data_ob.count_sphere_desert += 1;
            break;

        case 3:
            game_data_ob.count_sphere_lava += 1;
            break;
    }
}