/// MAKE_BLEND_COLOR_FOR_SPINE(red, green, blue)

// params
var red = argument0;
var green = argument1;
var blue = argument2;

if (os_type == os_android || os_type == os_ios) {
    return make_colour_rgb(blue, green, red);
} else {
    return make_colour_rgb(red, green, blue);
}
