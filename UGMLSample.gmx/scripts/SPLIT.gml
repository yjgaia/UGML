/// SPLIT(string, separator)

// params
var str = argument0;
var separator = argument1;

var result = ds_list_create();

var last_index = 0;

while (true) {

    var index = INDEX_OF(str, separator);
    
    if (index == -1) {
        break;
    }
    
    ds_list_add(result, SUB_STR(str, last_index, index));
    
    str = SUB_STR(str, index + string_length(separator), string_length(str));
}

ds_list_add(result, str);

return result;
