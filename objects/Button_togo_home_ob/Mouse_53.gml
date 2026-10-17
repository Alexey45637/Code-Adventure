var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (!confirm_open) {

    if (point_distance(_mx, _my, button_x, button_y) <= button_radius) {
        confirm_open = true;
    }

} else {

    var _cx = display_get_gui_width() / 2;
    var _cy = display_get_gui_height() / 2;

    // Кнопка ДА
    if (_mx >= _cx - 110 && _mx <= _cx - 20 &&
        _my >= _cy + 10 && _my <= _cy + 45) {

        if (!instance_exists(portal_home_ob)) {

            var _hero = instance_find(Hero_Ob, 0);

            if (instance_exists(_hero)) {
			                var _px, _py;
			var _attempts = 0;
			var _valid = false;

			repeat (200) {
			    _px = irandom_range(100, room_width - 100);
			    _py = irandom_range(100, room_height - 100);

			    if (
			        collision_circle(_px, _py, 100, kc_parent, false, true) == noone
			        &&
			        collision_circle(_px, _py, 100, Collision, false, true) == noone
			        &&
			        point_distance(_px, _py, _hero.x, _hero.y) > 100
			    ) {
			        _valid = true;
			        break;
			    }
			}

			if (_valid) {
			    instance_create_layer(_px, _py, "Instances", portal_home_ob);
				instance_destroy(Location_portal_ob, 0)
}
            }
        }

        confirm_open = false;
    }

    else if (_mx >= _cx + 20 && _mx <= _cx + 110 &&
             _my >= _cy + 10 && _my <= _cy + 45) {

        confirm_open = false;
    }
}