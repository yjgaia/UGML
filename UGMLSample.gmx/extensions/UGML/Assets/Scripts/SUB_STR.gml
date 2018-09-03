/// SUB_STR(string, start, end)

// params
var str = argument0;
var start = argument1;
var _end = argument2;

return string_copy(str, start + 1, _end - start);
