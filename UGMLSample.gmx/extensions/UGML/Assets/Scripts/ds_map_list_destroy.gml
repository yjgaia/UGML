/// ds_map_list_destroy(map_list)

// params
var map_list = argument0;

for (var i = 0; i < ds_list_size(map_list); i += 1) {
    ds_map_destroy(ds_list_find_value(map_list, i));
}

ds_list_destroy(map_list);
