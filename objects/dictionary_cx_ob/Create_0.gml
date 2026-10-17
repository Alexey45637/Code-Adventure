depth = -20;

schemes = [];

var _keys = struct_get_names(Dictionary_ob.order_doesnt_matter);

var _start_x = 650;
var _start_y = 300;
var _spacing = 250;

for (var i = 0; i < array_length(_keys); i++) {

    var _key = _keys[i];
    var _sipher = Dictionary_ob.order_doesnt_matter[$ _key];

    if (variable_struct_exists(Dictionary_ob.schematiki, _sipher)) {

        var _sprite = Dictionary_ob.schematiki[$ _sipher];

        var _w = sprite_get_width(_sprite);
        var _target_w = 180;
        var _scale = _target_w / _w;

        var _scheme = {
            sipher: _sipher,
            sprite: _sprite,

            x: _start_x + i * _spacing,
            y: _start_y,

            scale: _scale,

            dragging: false,
            grab_dx: 0,
            grab_dy: 0
        };

        array_push(schemes, _scheme);
    }
}