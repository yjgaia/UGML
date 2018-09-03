/// ENCRYPTION_POST(url, params, request_encryption_key)

// params
var url = argument0;
var params = argument1;
var request_encryption_key = argument2;

if (params != '') {
    params += '&__SEED=' + UUID();
} else {
    params = '__SEED=' + UUID();
}

return http_post_string(url, '__ENCRYPT=' + ENCODE_URL(ENCRYPT(params, request_encryption_key)));
