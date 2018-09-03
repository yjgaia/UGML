/// ENCODE_URL(url)

// params
var url = argument0;

var str = '';
var hex_digits = '0123456789ABCDEF';
var special_chars = '$&+,/:;=?@ "' + "'" + '<>#%{}|\^~[]`!';

var escape_bytes;

for (var i = 0; i < string_length(url); i += 1) {

    var ch = CHAR_AT(url, i);
    
    var o = ord(ch);
    var escapes = 0;
    
    if (o <= $7F) {
        if (string_pos(ch, special_chars) != 0) || (o < 32) {
            escapes = 1;
            escape_bytes[0] = o;
        }
    }
    
    else if (o <= $7FF) {
        escapes = 2;
        escape_bytes[0] = (o >> 6) + 192;
        escape_bytes[1] = (o & 63) + 128;
    }
    
    else if (o <= $FFFF) {
        escapes = 3;
        escape_bytes[0] = (o >> 12) + 224;
        escape_bytes[1] = ((o >> 6) & 63) + 128;
        escape_bytes[2] = (o & 63) + 128;
    }
    
    else {
        show_error("Invalid character.", true);
    }
    
    if (escapes == 0) {
        str += ch;
    } else {
        for (var j = 0; j < escapes; j += 1) {
            str += "%" + CHAR_AT(hex_digits, (escape_bytes[j] >> 4)) + CHAR_AT(hex_digits, (escape_bytes[j] & 15));
        }
    }
}

escape_bytes = -1;

return str;
