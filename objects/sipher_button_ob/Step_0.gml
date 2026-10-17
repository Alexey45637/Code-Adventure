visible = instance_exists(skud_ob);
if (visible) {
    var _mx = device_mouse_x_to_gui(0);
    var _my = device_mouse_y_to_gui(0);

    var _button_x = x;
    var _button_y = y;

    var _scale = 4;

    var _half_w = sprite_get_width(sprite_index) * _scale / 2;
    var _half_h = sprite_get_height(sprite_index) * _scale / 2;

    if (_mx >= _button_x - _half_w &&
        _mx <= _button_x + _half_w &&
        _my >= _button_y - _half_h &&
        _my <= _button_y + _half_h) {

        if (mouse_check_button_pressed(mb_left)) {
		    var _placed_scheme = noone;

		    for (var i = 0; i < instance_number(drag_cx_ob); i++) {

		        var _scheme = instance_find(drag_cx_ob, i);

		        if (_scheme.is_placed) {
		            _placed_scheme = _scheme;
		            break;
		        }
		    }

		    if (_placed_scheme != noone) {
	    if (_placed_scheme.sipher == global.random_value) {

			var _minigame = instance_find(obj_minigame, 0);

	    if (_minigame != noone && instance_exists(_minigame.linked_house)) {

	        var _house = _minigame.linked_house;

	        _house.door_open = true;
				if (instance_exists(_house.house_portal)) {
					_house.house_portal.active = true;
				}
			var _manager = instance_find(transition_manager_ob, 0);

			if (_manager != noone) {
			    _manager.house_states[$ _house.house_key] = {
			        door_open: _house.door_open,
			        house_cipher: _house.house_cipher,
			        house_task: _house.house_task
			    };
			}
	    }

	    show_locked_text = false;
	}
    else {
        show_locked_text = true;
    }
}
else {
    show_locked_text = true;
}
		}
	}
}