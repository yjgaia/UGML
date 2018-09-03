/// SAVE_DATA(file_name, data)

// params
var file_name = argument0;
var data = argument1;

var buffer = buffer_create(256, buffer_grow, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_string, json_encode(data));
buffer_save(buffer, file_name);
buffer_delete(buffer);
