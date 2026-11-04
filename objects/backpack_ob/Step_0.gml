if (keyboard_check_pressed(ord("T"))) {
    is_open = !is_open;
}

// Временно разрешаем смену только
// при закрытом рюкзаке
if (!is_open) {

    var next_backpack = active_backpack;

    if (keyboard_check_pressed(ord("1"))) {
        next_backpack = 0;
    }

    if (keyboard_check_pressed(ord("2"))) {
        next_backpack = 1;
    }

    if (next_backpack != active_backpack) {

        active_backpack = next_backpack;

        // Получаем содержимое нового рюкзака
        slots = backpacks[active_backpack].slots;

        // Переключаем интерфейс на новый массив
        with (slot) {
            slots = other.slots;
            slot_count = array_length(slots);

            dragging = false;
            drag_slot = -1;
            drag_count = 0;
            drag_split = false;
            selected_slot = -1;
        }

        show_debug_message(
            "Equipped: " +
            backpacks[active_backpack].name
        );
    }
}