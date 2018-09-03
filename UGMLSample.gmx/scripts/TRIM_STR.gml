/// TRIM_STR(string)

// params
var str = argument0;

var s = 0;
while (s < string_length(str)) {

    var ch = CHAR_AT(str, s);
    if (ch == ' ' || ord(ch) == 10 || ord(ch) == 13 || ord(ch) == 9) {
        s += 1;
    } else {
        break;
    }
}

var e = string_length(str) - 1;
while (e >= 0) {

    var ch = CHAR_AT(str, e);
    if (ch == ' ' || ord(ch) == 10 || ord(ch) == 13 || ord(ch) == 9) {
        e -= 1;
    } else {
        break;
    }
}

return SUB_STR(str, s, e + 1);
