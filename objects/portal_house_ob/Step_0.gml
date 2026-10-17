if (active) {
    if (place_meeting(x, y, Hero_Ob)) {

        var _manager = instance_find(transition_manager_ob, 0);

        if (_manager != noone) {
            _manager.return_room = room;
            _manager.return_x = x;
            _manager.return_y = y + 20;
        }

        room_goto(house_room);
    }
}