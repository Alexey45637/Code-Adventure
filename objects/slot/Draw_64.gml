for (var i = 0; i < array_length(slots); i++) {

    var slot_x = slot_start_x + i * slot_spacing;
    var slot_y = slot_start_y;

    draw_sprite_ext(slot_sp, 0, slot_x, slot_y, 3, 3, 0, c_white, 1);

    if (slots[i].thing != noone) {

        var item_sprite = object_get_sprite(slots[i].thing);

        if (item_sprite != -1) {
            draw_sprite_ext(item_sprite, 0, slot_x, slot_y, 5, 5, 0, c_white, 1);
        }

        draw_set_color(c_white);
        draw_set_halign(fa_right);
        draw_set_valign(fa_bottom);

        draw_text(
            slot_x + 44,
            slot_y + 54,
            string(slots[i].count)
        );
    }
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);