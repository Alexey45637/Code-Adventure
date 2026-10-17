if (instance_exists(skud_ob)) instance_destroy(skud_ob);
if (instance_exists(skud_slot_ob)) instance_destroy(skud_slot_ob);
if (instance_exists(drag_cx_ob)) {
    with (drag_cx_ob) {
        instance_destroy();
    }
}