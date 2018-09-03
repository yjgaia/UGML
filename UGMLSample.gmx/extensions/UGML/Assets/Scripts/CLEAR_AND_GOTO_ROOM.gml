/// CLEAR_AND_GOTO_ROOM(room)

// params
var _room = argument0;

with (all) {
    if (persistent != true) {
        instance_destroy();
    }
}

draw_texture_flush();

room_goto(_room);
