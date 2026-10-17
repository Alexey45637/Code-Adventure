var _hero = instance_find(Hero_Ob, 0);
hero_nearby = false;
dot_map = dot_portal_sp;
if (place_meeting(x, y, Hero_Ob)) {
    var _random_index = irandom(array_length(target_room) - 1);
    random_room = target_room[_random_index];

    room_goto(random_room);
}

if (_hero != noone) {
    var _dist = point_distance(x, y, _hero.x, _hero.y);
    hero_nearby = (_dist <= interact_radius);
}

if (hero_nearby) {
    sprite_index = open_portal_sp;
} else if (!hero_nearby) {
    sprite_index = hortal_house_sp;
}