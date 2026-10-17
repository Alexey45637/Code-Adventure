var _x = display_get_gui_width() - 320;
var _y = 275;
var _step = 100;

draw_set_font(fnt_prompt);
draw_set_color(c_white);

// Равнина
draw_sprite(kc_plains_sp_sphere, 0, _x, _y);
draw_text(_x + 35, _y - 7, string(count_sphere_plains));

// Пустыня
draw_sprite(kc_desert_sp_sphere, 0, _x + _step, _y);
draw_text(_x + _step + 35, _y - 7, string(count_sphere_desert));

// Лава
draw_sprite(kc_lava_sp_sphere, 0, _x  + _step * 2, _y);
draw_text(_x + _step * 2 + 35, _y - 7, string(count_sphere_lava));