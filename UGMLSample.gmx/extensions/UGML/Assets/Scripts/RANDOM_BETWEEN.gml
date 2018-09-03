/// RANDOM_BETWEEN(min, max)

// params
var _min = argument0;
var _max = argument1;

return floor(_min + random(_max - _min + 1));
