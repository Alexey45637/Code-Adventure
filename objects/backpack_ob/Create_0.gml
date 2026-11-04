is_open = false;
slot_count = 15;

// Функция создания нового рюкзака
make_backpack = function(_name, _capacity) {
    var _slots = [];

    for (var i = 0; i < _capacity; i++) {
        array_push(_slots, {
            thing: noone,
            count: 0
        });
    }

    return {
        name: _name,
        capacity: _capacity,
        slots: _slots
    };
};

// Два независимых рюкзака
backpacks = [
    make_backpack("Обычный рюкзак", 15),
    make_backpack("Запасной рюкзак", 15)
];

// Индекс экипированного рюкзака
active_backpack = 0;

// Содержимое экипированного рюкзака
slots = backpacks[active_backpack].slots;