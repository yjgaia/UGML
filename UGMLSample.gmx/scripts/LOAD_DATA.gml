/// LOAD_DATA(file_name)

// params
var file_name = argument0;

if (file_exists(file_name) == true) {

    var buffer = buffer_load(file_name);
    
    // 파일이 깨진 경우
    if (buffer < 0 || buffer_get_size(buffer) <= 3) {
        file_delete(file_name);
        return -1;
    }
    
    var data = json_decode(buffer_read(buffer, buffer_string));
    buffer_delete(buffer);
    
    if (data == -1) {
        file_delete(file_name);
    }
    
    return data;
}

return -1;
