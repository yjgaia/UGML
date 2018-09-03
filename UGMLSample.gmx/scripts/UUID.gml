/// UUID()

var uuid = '';

hex = DECIMAL_TO_HEX(floor((1 + random(1)) * 65536));
uuid += string_lower(SUB_STR(hex, 2, string_length(hex)));

hex = DECIMAL_TO_HEX(floor((1 + random(1)) * 65536));
uuid += string_lower(SUB_STR(hex, 2, string_length(hex)));

uuid += '-';

hex = DECIMAL_TO_HEX(floor((1 + random(1)) * 65536));
uuid += string_lower(SUB_STR(hex, 2, string_length(hex)));

uuid += '-';

hex = DECIMAL_TO_HEX(floor((1 + random(1)) * 65536));
uuid += string_lower(SUB_STR(hex, 2, string_length(hex)));

uuid += '-';

hex = DECIMAL_TO_HEX(floor((1 + random(1)) * 65536));
uuid += string_lower(SUB_STR(hex, 2, string_length(hex)));

uuid += '-';

hex = DECIMAL_TO_HEX(floor((1 + random(1)) * 65536));
uuid += string_lower(SUB_STR(hex, 2, string_length(hex)));

hex = DECIMAL_TO_HEX(floor((1 + random(1)) * 65536));
uuid += string_lower(SUB_STR(hex, 2, string_length(hex)));

hex = DECIMAL_TO_HEX(floor((1 + random(1)) * 65536));
uuid += string_lower(SUB_STR(hex, 2, string_length(hex)));

return SUB_STR(uuid, 0, 14) + '4' + SUB_STR(uuid, 15, string_length(uuid));
