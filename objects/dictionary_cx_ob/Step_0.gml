var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

for (var i = 0; i < array_length(schemes); i++) {

    var _scheme = schemes[i];

    var _w = sprite_get_width(_scheme.sprite) * _scheme.scale;
    var _h = sprite_get_height(_scheme.sprite) * _scheme.scale;

    var _hw = _w / 2;
    var _hh = _h / 2;

    // Нажали на схему в словаре
    if (mouse_check_button_pressed(mb_left)) {

        if (_mx >= _scheme.x - _hw &&
            _mx <= _scheme.x + _hw &&
            _my >= _scheme.y - _hh &&
            _my <= _scheme.y + _hh) {


            // ------------------------------------
            // ПРОВЕРЯЕМ: такая схема уже вытащена?
            // ------------------------------------

            var _already_exists = false;

            for (var j = 0; j < instance_number(drag_cx_ob); j++) {

                var _drag_check = instance_find(drag_cx_ob, j);

                if (_drag_check.sipher == _scheme.sipher) {
                    _already_exists = true;
                    break;
                }
            }

            if (!_already_exists) {

                var _drag = instance_create_depth(
                    _mx,
                    _my,
                    -30,
                    drag_cx_ob
                );

                _drag.scheme_sprite = _scheme.sprite;
                _drag.sipher = _scheme.sipher;
                _drag.scheme_scale = _scheme.scale;
                _drag.dragging = true;
            }

            break;
        }
    }
}