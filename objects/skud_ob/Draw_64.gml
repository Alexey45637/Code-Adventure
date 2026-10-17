draw_sprite_ext(sprite_index, 0, x, y, 12, 12, 0, c_white, 1);
draw_set_font(fnt_prompt);
draw_set_colour(c_aqua);
if (progress div 110 == tt) {
	t += ".";
	tt+= 1
	if (progress >= 440) {
		t = "Успешно! Текущий шифр: ";
	}
}
if (is_placed) {
	draw_rectangle_colour(550, 350, 1000, 425, c_blue, c_blue, c_blue, c_blue, true);
	draw_rectangle_colour(555, 355, 550+progress, 420, c_blue, c_blue, c_blue, c_blue, false)
	draw_text_colour(550, 425, t, c_aqua, c_aqua, c_aqua, c_aqua, 1);
}
if (t == "Успешно! Текущий шифр: ") {
	draw_text(1075, 425, global.random_value);
	draw_text(550, 600, "Выведите "+global.random_task+" из списка.");
}