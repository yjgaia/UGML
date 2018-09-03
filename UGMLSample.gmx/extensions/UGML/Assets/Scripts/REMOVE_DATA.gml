/// REMOVE_DATA(file_name)

// params
var file_name = argument0;

if (file_exists(file_name) == true) {
    file_delete(file_name);
}
