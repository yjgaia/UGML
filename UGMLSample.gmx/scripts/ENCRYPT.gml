/// ENCRYPT(password, key)

// params
var password = argument0;
var key = argument1;

var result = '';

var keyLength = string_length(key);
var keyCount = 0;
for (var i = 0; i < string_length(password); i += 1) {
    result += chr(string_ord_at(password, i + 1) ^ string_ord_at(key, keyCount + 1));
    keyCount += 1;
    if (keyCount == keyLength) {
        keyCount = 0;
    }
}

return result;
