var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

var _scale = 12; // масштаб объекта
var _hw = sprite_get_width(sprite_index)  * _scale / 2;
var _hh = sprite_get_height(sprite_index) * _scale / 2;

if (!dragging && mouse_check_button_pressed(mb_left)) {
    if (_mx >= x - _hw && _mx <= x + _hw &&
        _my >= y - _hh && _my <= y + _hh) {
        dragging = true;
        grab_dx = x - _mx;
        grab_dy = y - _my;
    }
} // потащить
if (dragging) {
    x = _mx + grab_dx;
    y = _my + grab_dy;
} // тащить

if (dragging && mouse_check_button_released(mb_left)) {
    dragging = false;
    
    var _slot = instance_find(skud_slot_ob, 0);
    if (_slot != noone) {
        if (x >= _slot.x - _hw && x <= _slot.x + _hw &&
            y >= _slot.y - _hh && y <= _slot.y + _hh) {
            x = _slot.x;
            y = _slot.y;
            is_placed = true;
			exit;

        }
    }
} // действие после того как опустил скуд

if (is_placed && progress <= 440) {
	progress += 5;
} // Для заполнения прямоугольника