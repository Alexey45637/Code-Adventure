visible = instance_exists(skud_ob);

if (visible) {

    var _mx = device_mouse_x_to_gui(0);
    var _my = device_mouse_y_to_gui(0);

    var _button_x = 240;
    var _button_y = 1100;

    var _scale = 4;

    var _half_w = sprite_get_width(sprite_index) * _scale / 2;
    var _half_h = sprite_get_height(sprite_index) * _scale / 2;

    if (_mx >= _button_x - _half_w &&
        _mx <= _button_x + _half_w &&
        _my >= _button_y - _half_h &&
        _my <= _button_y + _half_h) {

        if (mouse_check_button_pressed(mb_left)) {

            if (!instance_exists(dictionary_cx_ob)) {
                instance_create_layer(
                    0,
                    0,
                    "Instances",
                    dictionary_cx_ob
                );
            }
        }
    }
}