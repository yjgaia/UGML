/// REMOVE_VALUE_IN_MAP(map, value)

// params
var map = argument0;
var value = argument1;

var key = FIND_KEY_IN_MAP(map, value);

if (is_undefined(key) != true) {
    ds_map_delete(map, key);
}
