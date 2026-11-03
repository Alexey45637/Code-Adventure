if (instance_exists(Hero_Ob)) {
    if (distance_to_object(Hero_Ob) < radius && !text_visible) {
        if (keyboard_check_pressed(ord("E"))) {
            text_visible = true;
        }
    }
    
    if (text_visible && keyboard_check_pressed(vk_enter)) {
        text_visible = false;
    }
}