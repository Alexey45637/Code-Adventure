var _hero = instance_find(Hero_Ob, 0);
hero_nearby = false;


if (_hero != noone) {
    var _dist = point_distance(x, y, _hero.x, _hero.y);
    hero_nearby = (_dist <= interact_radius);
}

if (hero_nearby && !collected) {
    if (keyboard_check_pressed(ord("E"))) {
        collected = true;
		struct_set(Dictionary_ob.order_doesnt_matter, now_cx_ob, sipher);
        instance_destroy();       
    }
}

if (!hero_nearby && schematic_view != noone) {
    instance_destroy(schematic_view);
    schematic_view = noone;
}

// Закрытие по Esc (в любой момент)
if (schematic_view != noone && keyboard_check_pressed(vk_escape)) {
    instance_destroy(schematic_view);
    schematic_view = noone;
}