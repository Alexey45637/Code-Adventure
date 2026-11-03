if (!instance_exists(Hero_Ob)) {
    instance_destroy();
    exit;
}

var _dir = point_direction(x, y, Hero_Ob.x, Hero_Ob.y);

x = x + lengthdir_x(move_speed, _dir);
y = y + lengthdir_y(move_speed, _dir);

var _dist_to_player = distance_to_object(Hero_Ob);

if (_dist_to_player < disappear_radius) {
    instance_destroy();
}