draw_self()
if (instance_exists(Hero_Ob)) {
    // 1. Подсказка "[E] Прочитать" над статуей
    if (distance_to_object(Hero_Ob) < radius && !text_visible) {
        draw_set_alpha(1);
        draw_set_color(c_yellow);
        draw_set_font(fnt_prompt);
        draw_set_halign(fa_center);
        draw_text(x, y - 70, "[E] Прочитать");
        draw_set_halign(fa_left);
    }
}

// 2. Сама табличка с АВТО-РАЗМЕРОМ
if (text_visible) {
    draw_set_font(fnt_prompt);
    
    //НАСТРОЙКИ
    var _pad = 20;
    var _max_w = 450;
    var _line_sep = 40;
    
    //РАСЧЁТ РАЗМЕРОВ
    var _text_w = string_width(plaque_text);
    
    if (_text_w > _max_w) {
        _text_w = _max_w;
    }
    
    var _text_h = string_height_ext(plaque_text, _line_sep, _text_w);
    
    var _rect_w = _text_w + (_pad * 2);
    var _rect_h = _text_h + (_pad * 2);
    
    //ПОЗИЦИЯ
    var _px = x + 60;
    var _py = y - (_rect_h / 2);

    //ОТРИСОВКА
    // Фон таблички
    draw_set_alpha(0.9);
    draw_set_color(make_color_rgb(45, 30, 20)); 
    draw_rectangle(_px, _py, _px + _rect_w, _py + _rect_h, false);

    // Рамка таблички
    draw_set_alpha(1);
    draw_set_color(make_color_rgb(120, 80, 40));
    draw_rectangle(_px, _py, _px + _rect_w, _py + _rect_h, true);

    // Текст внутри таблички
    draw_set_color(c_white);
    draw_set_font(fnt_prompt);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    draw_text_ext(_px + _pad, _py + _pad, plaque_text, _line_sep, _text_w);

    // Сбрасываем настройки
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
}