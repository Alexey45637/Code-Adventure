slot_count = 5;
slot_start_x = 100;
slot_start_y = 100;
slot_spacing = 112;

slots = [];

for (var i = 0; i < slot_count; i++) {
    array_push(slots, {
        thing: noone,
        count: 0
    });
}

item_limits = ds_map_create();
ds_map_add(item_limits, gold_con_ob, 16);


add_item = function(slot_id, incoming_thing, incoming_count) {
    if (slot_id < 0 || slot_id >= array_length(slots)) {
        return incoming_count;
    }
    if (incoming_count <= 0) {
        return 0;
    }
    if (!ds_map_exists(item_limits, incoming_thing)) {
        return incoming_count;
    }
    var current_slot = slots[slot_id];
    if (current_slot.thing == noone ||
        current_slot.thing == incoming_thing) {
        var item_limit = item_limits[? incoming_thing];
        var free_space = max(0, item_limit - current_slot.count);
        var added = min(incoming_count, free_space);
        if (added > 0) {
            current_slot.thing = incoming_thing;
            current_slot.count += added;
        }
        return incoming_count - added;
    }
    return incoming_count;
};
remove_item = function(slot_id, requested) {
    if (slot_id < 0 || slot_id >= array_length(slots)) {
        return 0;
    }
    if (requested <= 0) {
        return 0;
    }
    var current_slot = slots[slot_id];
    var removed = min(requested, current_slot.count);
    current_slot.count -= removed;
    if (current_slot.count == 0) {
        current_slot.thing = noone;
    }
    return removed;
};
move_item = function(from_id, to_id) {
    if (from_id == to_id) {
        return 0;
    }
    if (from_id < 0 || from_id >= array_length(slots) ||
        to_id < 0 || to_id >= array_length(slots)) {
        return 0;
    }
    var source = slots[from_id];
    if (source.thing == noone || source.count <= 0) {
        return 0;
    }
    var leftover = add_item(to_id, source.thing, source.count);
    var moved = source.count - leftover;
    remove_item(from_id, moved);
    return moved;
};
add_item(0, gold_con_ob, 12);
add_item(1, gold_con_ob, 14);

var moved = move_item(0, 1);

show_debug_message("Перенесено: " + string(moved));
show_debug_message("Слот 0: " + string(slots[0].count));
show_debug_message("Слот 1: " + string(slots[1].count));