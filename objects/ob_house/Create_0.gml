depth = 2;
door_open = false;      
global.sprite_closed = spr_house;
sprite_open   = spr_house_open;
house_cipher = "";
house_task = "";
house_portal = instance_create_layer(x - 53, y + 23, "Instances", portal_house_ob);
house_slot = instance_create_layer(x - 20, y, "Instances", pd_slot_ob);
house_slot.linked_house = id;
house_portal.linked_house = id;
house_key = room_get_name(room) + "_" + string(x) + "_" + string(y);
dot_map = house_dot_sp;
var _manager = instance_find(transition_manager_ob, 0);

if (_manager != noone) {
	if (!variable_instance_exists(_manager, "house_states")) {
        _manager.house_states = {};
    }
    if (variable_struct_exists(_manager.house_states, house_key)) {

        var _state = _manager.house_states[$ house_key];

        door_open = _state.door_open;
        house_cipher = _state.house_cipher;
        house_task = _state.house_task;

        house_portal.active = door_open;
    }
}