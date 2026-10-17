if (returning) {
    var _hero = instance_find(Hero_Ob, 0);

    if (_hero != noone) {
        _hero.x = return_x;
        _hero.y = return_y;

        returning = false;
    }
}