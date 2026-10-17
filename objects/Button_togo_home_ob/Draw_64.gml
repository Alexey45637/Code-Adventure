draw_set_alpha(1);
draw_set_color(c_white);

// Круглая кнопка
draw_circle(button_x, button_y, button_radius, false);

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(button_x, button_y, "H");

if (confirm_open) {
    var _cx = display_get_gui_width() / 2;
    var _cy = display_get_gui_height() / 2;

    draw_set_color(c_black);
    draw_roundrect(_cx - 150, _cy - 65,
                   _cx + 150, _cy + 65, false);

    draw_set_color(c_white);
    draw_text(_cx, _cy - 30, "Вы уверены?");

    // Да
    draw_set_color(c_lime);
    draw_roundrect(_cx - 110, _cy + 10,
                   _cx - 20, _cy + 45, false);

    // Нет
    draw_set_color(c_red);
    draw_roundrect(_cx + 20, _cy + 10,
                   _cx + 110, _cy + 45, false);

    draw_set_color(c_black);
    draw_text(_cx - 65, _cy + 27, "Да");
    draw_text(_cx + 65, _cy + 27, "Нет");
}

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);