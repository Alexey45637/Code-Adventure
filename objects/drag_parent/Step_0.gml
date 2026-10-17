if (is_placed) exit;

x = mouse_x;
y = mouse_y;

if (place_meeting(x, y, target_zone)) {
    var _slot = instance_place(x, y, target_zone);
    
    if (target_zone == pd_slot_ob) {
        instance_create_layer(_slot.x, _slot.y, "Instances", pd_placed_ob);
        instance_destroy();
    } else {
        x = _slot.x;
        y = _slot.y;
        is_placed = true;
    }
}