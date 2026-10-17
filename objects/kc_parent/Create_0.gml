x = irandom_range(100, 900);
y = irandom_range(100, 700);

while (
    collision_circle(x, y, 100, kc_parent, false, true) != noone
    ||
    collision_circle(x, y, 100, Collision, false, true) != noone
) {
    x = irandom_range(100, 900);
    y = irandom_range(100, 700);
}

interact_radius = 64;
get_kc = false;