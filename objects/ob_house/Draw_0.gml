if (door_open) {
    draw_sprite(sprite_open, 0, x, y);
} else {
    draw_sprite(global.sprite_closed, 0, x, y);
}