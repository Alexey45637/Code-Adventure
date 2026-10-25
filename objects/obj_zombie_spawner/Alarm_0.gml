alarm[0] = irandom_range(120, 240);

if (!instance_exists(Hero_Ob)) exit;

var _count = irandom_range(spawn_count_min, spawn_count_max);

for (var i = 0; i < _count; i++) {
    var _angle = random(360);
    var _dist = irandom_range(spawn_dist_min, spawn_dist_max);

    var _spawn_x = Hero_Ob.x + lengthdir_x(_dist, _angle);
    var _spawn_y = Hero_Ob.y + lengthdir_y(_dist, _angle);

    _spawn_x = clamp(_spawn_x, 32, room_width - 32);
    _spawn_y = clamp(_spawn_y, 32, room_height - 32);

    var _can_spawn = true;
    if (place_meeting(_spawn_x, _spawn_y, zombie_ob)) {
        _can_spawn = false;
    }

    if (_can_spawn) {
        instance_create_layer(_spawn_x, _spawn_y, "Instances", zombie_ob);
    }
}