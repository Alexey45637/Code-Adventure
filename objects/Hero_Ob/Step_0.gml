var _h = keyboard_check(ord("D")) - keyboard_check(ord("A")); 
var _v = keyboard_check(ord("S")) - keyboard_check(ord("W")); 

var _walls = layer_tilemap_get_id("Walls");

var _dir = point_direction(0, 0, _h, _v);
var _len = point_distance(0, 0, _h, _v);

if (_len > 0) {
    var _nx = _h / _len;
    var _ny = _v / _len;

    // X
    if (!place_meeting(x + _nx * spd, y, Collision)) {
        if (tilemap_get_at_pixel(_walls, x + _nx * spd, y) == 0) {
            x += _nx * spd;
        }
    }

    // Y
    if (!place_meeting(x, y + _ny * spd, Collision)) {
        if (tilemap_get_at_pixel(_walls, x, y + _ny * spd) == 0) {
            y += _ny * spd;
        }
    }
}

if (keyboard_check_pressed(ord("R"))) {
	if (instance_exists(pd_ob)) {
		instance_destroy(pd_ob)	
	} else {
        if (!instance_exists(pd_placed_ob)) {
            instance_create_layer(mouse_x, mouse_y, "Instances", pd_ob);
        }
	}
}