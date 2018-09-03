/// RANDOM_STR(length)

// params
var length = argument0;

var random_str = '';

repeat(length) {
    var random_number = irandom_range(1, 3)
    
    if (random_number == 1) {
        random_str += chr(irandom_range(48, 57));
    } else if (random_number == 2) {
        random_str += chr(irandom_range(65, 90));
    } else {
        random_str += chr(irandom_range(97, 122));
    }
}

return random_str;
