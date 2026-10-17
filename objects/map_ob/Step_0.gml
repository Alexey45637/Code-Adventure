if (keyboard_check_pressed(ord("M"))) {
    visible = !visible;
	game_data_ob.visible = !game_data_ob.visible;
	Button_togo_home_ob.visible = !Button_togo_home_ob.visible;
}

if (keyboard_check_pressed(187)) {
    map_zoom = min(map_zoom * 2, 4);
}

if (keyboard_check_pressed(189)) {
    map_zoom = max(map_zoom / 2, 1);
}