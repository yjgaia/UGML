/// SUB_STR_UNICODE_COUNT_2(string, start, end)

// params
var str = argument0;
var start = argument1;
var _end = argument2;

var length = 0;
var real_start = 0;
var real_end = string_length(str);

for (var i = 0; i < string_length(str); i += 1) {

    if (length <= start) {
        real_start = i;
    }

    if (string_byte_length(CHAR_AT(str, i)) > 1) {
        length += 2;
    } else {
        length += 1;
    }
    
    if (length <= _end) {
        real_end = i + 1;
    }
}

return SUB_STR(str, real_start, real_end);
