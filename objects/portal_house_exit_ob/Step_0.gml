if (place_meeting(x, y, Hero_Ob)) {

    var _manager = instance_find(transition_manager_ob, 0);

    if (_manager != noone) {
		_manager.returning = true;
        room_goto(_manager.return_room);
    }
}