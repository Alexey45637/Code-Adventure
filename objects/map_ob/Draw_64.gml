var _hero = instance_find(Hero_Ob, 0);

if (instance_exists(_hero)) {
    var _center_x = map_x + width_map / 2;
    var _center_y = map_y + height_map / 2;
    var _scale_x = (width_map / room_width) * map_zoom;
    var _scale_y = (height_map / room_height) * map_zoom;

    var _half_view_x = room_width / (2 * map_zoom);
    var _half_view_y = room_height / (2 * map_zoom);
    var _camera_x = room_width / 2;
    var _camera_y = room_height / 2;
    if (map_zoom >= 1) {
        _camera_x = clamp(_hero.x, _half_view_x, room_width - _half_view_x);
        _camera_y = clamp(_hero.y, _half_view_y, room_height - _half_view_y);
    }
    hero_map_x = _camera_x;
    hero_map_y = _camera_y;
    scale_map_x = _scale_x;
    scale_map_y = _scale_y;
    draw_set_color(c_black);
    draw_rectangle(map_x, map_y, map_x + width_map, map_y + height_map, false);
    draw_set_color(c_white);
	
    with (all) {
        if (variable_instance_exists(id, "dot_map")) {
            var _dot_x = other.map_x + other.width_map / 2 + (x - other.hero_map_x) * other.scale_map_x;
            var _dot_y = other.map_y + other.height_map / 2 + (y - other.hero_map_y) * other.scale_map_y;
            if (_dot_x >= other.map_x && _dot_x <= other.map_x + other.width_map && _dot_y >= other.map_y && _dot_y <= other.map_y + other.height_map) {
                draw_sprite(dot_map, 0, _dot_x, _dot_y);
            }
        }
    }
    var _player_dot_x = _center_x + (_hero.x - _camera_x) * _scale_x;
    var _player_dot_y = _center_y + (_hero.y - _camera_y) * _scale_y;
    draw_circle_colour(_player_dot_x, _player_dot_y, 5, c_red, c_red, false);
    draw_set_color(c_white);
}