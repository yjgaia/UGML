/// COPY_MAP(map)

// params
var map = argument0;

// deep copy
return json_decode(json_encode(map));
