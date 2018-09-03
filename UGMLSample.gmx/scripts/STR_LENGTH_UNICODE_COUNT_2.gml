/// STR_LENGTH_UNICODE_COUNT_2(string)

// params
var str = argument0;

var length = 0;

for (var i = 0; i < string_length(str); i += 1) {
    if (string_byte_length(CHAR_AT(str, i)) > 1) {
        length += 2;
    } else {
        length += 1;
    }
}

return length;
