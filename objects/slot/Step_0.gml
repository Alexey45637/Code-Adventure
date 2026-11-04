if (!instance_exists(backpack_ob)) {
    exit;
}
if (!backpack_ob.is_open) {
    dragging = false;
    drag_slot = -1;
    selected_slot = -1;
    exit;
}
if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    selected_slot = -1;

    var w = sprite_get_width(slot_sp) * slot_scale;
    var h = sprite_get_height(slot_sp) * slot_scale;

    var ox = sprite_get_xoffset(slot_sp) * slot_scale;
    var oy = sprite_get_yoffset(slot_sp) * slot_scale;

    for (var i = 0; i < array_length(slots); i++) {
        var col = i mod slot_columns;
        var row = i div slot_columns;

        var sx = slot_start_x + col * slot_spacing;
        var sy = slot_start_y + row * slot_spacing;

        var left = sx - ox;
        var top = sy - oy;

        if (mx >= left && mx < left + w &&
            my >= top && my < top + h) {

            selected_slot = i;
            break;
        }
    }

    show_debug_message("Selected slot: " + string(selected_slot));
}
if (mouse_check_button_pressed(mb_left)) {
    dragging = false;
    drag_slot = -1;

    if (selected_slot != -1) {
        if (slots[selected_slot].thing != noone &&
            slots[selected_slot].count > 0) {

            dragging = true;
            drag_slot = selected_slot;
		drag_split = keyboard_check(vk_shift);
		if (drag_split) {
		    drag_count = slots[drag_slot].count div 2;
		} else {
		    drag_count = slots[drag_slot].count;
		}

		if (drag_count <= 0) {
		    dragging = false;
		    drag_slot = -1;
		}
        }
    }
}
if (mouse_check_button_released(mb_left)) {

    if (dragging && drag_slot != -1) {

        var mx = device_mouse_x_to_gui(0);
        var my = device_mouse_y_to_gui(0);

        var target_slot = -1;

        var w = sprite_get_width(slot_sp) * slot_scale;
        var h = sprite_get_height(slot_sp) * slot_scale;

        var ox = sprite_get_xoffset(slot_sp) * slot_scale;
        var oy = sprite_get_yoffset(slot_sp) * slot_scale;

        for (var i = 0; i < array_length(slots); i++) {

            var col = i mod slot_columns;
            var row = i div slot_columns;

            var sx = slot_start_x + col * slot_spacing;
            var sy = slot_start_y + row * slot_spacing;

            var left = sx - ox;
            var top = sy - oy;

            if (mx >= left && mx < left + w &&
                my >= top && my < top + h) {

                target_slot = i;
                break;
            }
        }

        if (target_slot != -1 && target_slot != drag_slot) {

            var moved = 0;

			if (drag_split) {

			    var source = slots[drag_slot];

			    moved = drag_count - add_item(
			        target_slot,
			        source.thing,
			        drag_count
			    );

			    if (moved > 0) {
			        remove_item(drag_slot, moved);
			    }

			} else {

			    moved = move_item(drag_slot, target_slot);

			}

            show_debug_message(
                "Moved items: " + string(moved)
            );
        }
    }

    dragging = false;
    drag_slot = -1;
	drag_count = 0;
	drag_split = false;
}