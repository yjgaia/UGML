/// FIND_KEY_IN_MAP(map, value)

// params
var map = argument0;
var value = argument1;

var key = ds_map_find_first(map);

for (var i = 0; i < ds_map_size(map); i += 1) {
    
    if (ds_map_find_value(map, key) == value) {
        return key;
    }
    
    key = ds_map_find_next(map, key);
}

return undefined;
