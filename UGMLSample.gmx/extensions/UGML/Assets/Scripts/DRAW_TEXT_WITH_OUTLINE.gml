/// DRAW_TEXT_WITH_OUTLINE(x, y, thick, color, text)

// params
var _x = argument0;
var _y = argument1;
var thick = argument2;
var color = argument3;
var text = argument4;

var origin_color = draw_get_color();

draw_set_color(color);

for (var i = 0; i < thick; i += 1) {
    for (var j = 0; j < thick; j += 1) {
        draw_text(_x + i - (thick / 2), _y + j - (thick / 2), text);
    }
}

draw_set_color(origin_color);
draw_text(_x, _y, text);
