image_index += 0.25;   // скорость анимации
var _hero = instance_find(Hero_Ob, 0);
hero_nearby = false;
if (image_index >= sprite_get_number(sprite_index) - 1) {
    image_index = sprite_get_number(sprite_index) - 1;
    image_speed = 0;
} // красивая анимка

if (_hero != noone) {
    var _dist = point_distance(x, y, _hero.x, _hero.y);
    hero_nearby = (_dist <= interact_radius);
} // поиск радиуса вз-ия
if (hero_nearby && keyboard_check_pressed(ord("E"))) {

    linked_house = instance_nearest(x, y, ob_house);

    if (!instance_exists(obj_minigame) && instance_exists(linked_house)) {

        var _minigame = instance_create_layer(0, 0, "Instances", obj_minigame);
        _minigame.linked_house = linked_house;

        if (linked_house.house_cipher == "") {
            with (Dictionary_ob) {
                event_user(0);
            }

            linked_house.house_cipher = global.random_value;
            linked_house.house_task = global.random_task;
			var _manager = instance_find(transition_manager_ob, 0);
			if (_manager != noone) {
			    _manager.house_states[$ linked_house.house_key] = {
			        door_open: linked_house.door_open,
			        house_cipher: linked_house.house_cipher,
			        house_task: linked_house.house_task
			    };
			}
        } else {
            global.random_value = linked_house.house_cipher;
            global.random_task = linked_house.house_task;
        }
    }
} // ну запуск

