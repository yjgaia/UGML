/// DECIMAL_TO_HEX(decimal)

// params
var decimal = argument0;

var hex = '';
if (decimal <= 0) {
    hex = '00';
}

var chars = '0123456789ABCDEF';

while (decimal > 0) {
    var byte = decimal & 255;
    hex = string_char_at(chars, byte / 16 + 1) + string_char_at(chars, byte % 16 + 1) + hex;
    decimal = decimal >> 8;
}

return hex;
