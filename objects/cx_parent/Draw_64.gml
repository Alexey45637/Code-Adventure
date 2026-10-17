if (collected) exit;

if (hero_nearby) {
    var _gui_x = (x - camera_get_view_x(view_camera[0])) * (display_get_gui_width()  / camera_get_view_width(view_camera[0]));
    var _gui_y = (y - camera_get_view_y(view_camera[0])) * (display_get_gui_height() / camera_get_view_height(view_camera[0]));
    
    draw_set_font(fnt_prompt);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white);
    draw_text(_gui_x, _gui_y - 40, prompt_text);
    draw_set_font(-1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_black);
}