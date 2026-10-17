var _keys = struct_get_names(order_doesnt_matter);

if (array_length(_keys) > 0) {
    var _random_key = _keys[irandom(array_length(_keys) - 1)];

    global.random_value = order_doesnt_matter[$ _random_key];
    global.random_task = tasks[$ global.random_value];
}