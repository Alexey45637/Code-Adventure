var _gw = display_get_gui_width();   // 1600
var _gh = display_get_gui_height();  // 1200

// Затемнение
draw_set_alpha(0.65);
draw_set_color(c_black);
draw_rectangle(0, 0, _gw, _gh, false);
draw_set_alpha(1);

draw_sprite_ext(spr_panel, 0, 1200, 800, 4, 4, 0, c_white, 1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1)
draw_set_color(c_black);