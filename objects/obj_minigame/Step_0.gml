if (keyboard_check_pressed(vk_escape)) {

    if (instance_exists(dictionary_cx_ob)) {
        with (dictionary_cx_ob) {
            instance_destroy();
        }
    }
    else {
        instance_destroy();
    }
    exit;
}