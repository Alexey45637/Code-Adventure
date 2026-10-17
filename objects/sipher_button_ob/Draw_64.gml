draw_sprite_ext(sprite_index, 0, x,y, 4, 4, 0, c_white, 1);

draw_sprite_ext(
    sprite_index,
    0,
    x,
    y,
    4,
    4,
    0,
    c_white,
    1
);

if (show_locked_text) {

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_red);

    draw_text(
        display_get_gui_width() / 2,
        display_get_gui_height() / 2,
        "Дверь заперта"
    );

    // Возвращаем настройки, чтобы не гадить другим Draw
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}