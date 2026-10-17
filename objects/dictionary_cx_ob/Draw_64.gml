var _gw = display_get_gui_width();
var _gh = display_get_gui_height();
// Сам планшет
draw_set_color(c_dkgray);
draw_rectangle(
    500,
    150,
    _gw-250,
    _gh-750,
    false
);

// Заголовок
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(
    _gw / 2 + 125,
    180,
    "Доступные схемы"
);

// Схемы
for (var i = 0; i < array_length(schemes); i++) {

    var _scheme = schemes[i];

    draw_sprite_ext(
        _scheme.sprite,
        0,
        _scheme.x,
        _scheme.y,
        _scheme.scale,
        _scheme.scale,
        0,
        c_white,
        1
    );
}

// Возвращаем настройки рисования
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);