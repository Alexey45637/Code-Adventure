var _base_w = 96;
var _base_h = 64;

var _scale_slot = 2;

dragging = false;
grab_dx = 0;
grab_dy = 0;
placed = false;
linked_house = noone;

skud_ob_instance = instance_create_depth(display_get_gui_width()-200, display_get_gui_height()-200, -10, skud_ob);
skud_slot_ob_instance = instance_create_depth(display_get_gui_width()-2000, display_get_gui_height()-1125, -10, skud_slot_ob);