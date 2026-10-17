var _hero = instance_find(Hero_Ob, 0);

if (instance_exists(_hero)) {
    if (point_distance(x, y, _hero.x, _hero.y) <= portal_radius) {
        room_goto(Garage_room);
    }
}	