backpack_ref = instance_find(backpack_ob, 0);

if (instance_exists(backpack_ref)) {
    slots = backpack_ref.slots;
	slot_count = array_length(slots);
    show_debug_message(
        "Backpack connected! Slots: " +
        string(array_length(slots))
    );
} else {
    show_error("Backpack not found!", true);
}

add_item(0, gold_con_ob, 12);
add_item(1, gold_con_ob, 14);