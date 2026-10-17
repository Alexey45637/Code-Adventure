var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

// Размер самой схемы
var _hw = sprite_get_width(scheme_sprite) * scheme_scale / 2;
var _hh = sprite_get_height(scheme_sprite) * scheme_scale / 2;


// НАЧАЛИ ТАЩИТЬ
if (!dragging && mouse_check_button_pressed(mb_left)) {

    if (_mx >= x - _hw && _mx <= x + _hw &&
        _my >= y - _hh && _my <= y + _hh) {

        dragging = true;

        grab_dx = x - _mx;
        grab_dy = y - _my;

        is_placed = false;
    }
}


// ТАЩИМ
if (dragging) {

    x = _mx + grab_dx;
    y = _my + grab_dy;
}


// ОТПУСТИЛИ
if (dragging && mouse_check_button_released(mb_left)) {

    dragging = false;

    var _slot = instance_find(cx_slot_one_ob, 0);

    if (_slot != noone) {

        var _slot_scale = _slot.slot_scale;

        var _slot_hw =
            sprite_get_width(_slot.sprite_index)
            * _slot_scale / 2;

        var _slot_hh =
            sprite_get_height(_slot.sprite_index)
            * _slot_scale / 2;

        // Центр схемы находится внутри слота?
        if (x >= _slot.x - _slot_hw &&
            x <= _slot.x + _slot_hw &&
            y >= _slot.y - _slot_hh &&
            y <= _slot.y + _slot_hh) {

            // Прищёлкиваем к центру
            x = _slot.x;
            y = _slot.y;

            is_placed = true;
        }
    }
}