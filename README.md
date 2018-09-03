# UGML
GML에서 사용할 수 있는 각종 유용한 함수들의 집합

## `ds_list` 관련 기능
- `CHECK_IS_IN_LIST(list, value)` `value`가 `list`안에 존재하는지 확인합니다.
- `REMOVE_VALUE_IN_LIST(list, value)` `list`에서 `value`를 삭제합니다.

## `ds_map` 관련 기능
- `COPY_MAP(map)` `map`을 복제하여 새로운 맵을 반환합니다.
- `REMOVE_VALUE_IN_MAP(map, value)` `map`에서 `value` 값을 찾아 삭제합니다.
- `FIND_KEY_IN_MAP(map, value)` `map`에서 `value`에 해당하는 키를 반환합니다.

## 드로잉 관련 기능
- `DRAW_TEXT_WITH_OUTLINE(x, y, thick, color, text)` 글자에 테두리를 입혀 드로잉합니다.

## 데이터 저장 기능
- `SAVE_DATA(file_name, data)` 파일에 `ds_map` 형태의 `data`를 저장합니다.
- `LOAD_DATA(file_name)` 파일로부터 데이터를 불러와 반환합니다.
- `REMOVE_DATA(file_name)` 데이터가 저장된 파일을 삭제합니다.

## 문자열 관련 기능
- `TRIM_STR(string)` 문자열의 앞 뒤 공백을 제거하여 반환합니다.
- `TRIM_STR_NO_NEW_LINE(string)` 줄바꿈 문자는 유지하고 문자열의 앞 뒤 공백을 제거하여 반환합니다.
- `RANDOM_STR(length)` `length`길이에 해당하는 랜덤 문자열을 반환합니다.
- `SUB_STR(string, start, end)` 문자열의 `start` 위치에서 `end` 위치까지의 문자열을 반환합니다.
- `CHAR_AT(string, index)` 문자열의 `index` 위치의 문자를 반환합니다.
- `BYTE_AT(string, index)` 문자열의 `index` 위치의 문자를 바이트로 반환합니다.
- `STR_LENGTH_UNICODE_COUNT_2(string)` 문자열 내 유니코드를 2글자로 계산하여 전체 길이를 반환합니다.
- `SUB_STR_UNICODE_COUNT_2(string, start, end)` 문자열 내 유니코드를 2글자로 계산했을 때 문자열의 `start` 위치에서 `end` 위치까지의 문자열을 반환합니다.
- `SPLIT(string, separator)` 문자열을 `separator`를 기준으로 잘라 `ds_list`형태로 목록화 하여 반환합니다.
- `INDEX_OF(string, substr)` 문자열에서 `substr`에 해당하는 위치를 찾아 반환합니다. 존재하지 않으면 -1을 반환합니다.
- `ENCODE_URL(url)` `url`을 인코딩합니다.
- `ENCRYPT(password, key)` 비밀번호를 주어진 키를 암호화합니다. 같은 키로 한번 더 수행하면, 복호화됩니다.
- `UUID()` [범용 고유 식별자](https://ko.wikipedia.org/wiki/%EB%B2%94%EC%9A%A9_%EA%B3%A0%EC%9C%A0_%EC%8B%9D%EB%B3%84%EC%9E%90)를 생성합니다.

## 암호화 HTTP 요청 기능
- `ENCRYPTION_GET(url, params, request_encryption_key)` GET 요청을 암호화하여 전송합니다.
- `ENCRYPTION_POST(url, params, request_encryption_key)` POST 요청을 암호화하여 전송합니다.

## 기타 기능
- `TERNARY(condition, true_value, false_value)` 3항 연산자의 역할을 하는 함수입니다.
- `RANDOM_BETWEEN(min, max)` `min`에서 `max` 내의 숫자를 랜덤하게 반환합니다.
- `LOG(value)` `value`를 콘솔에 출력합니다.
- `LOG_MAP(map)` `ds_map` 형태의 값을 콘솔에 출력합니다.
- `DECIMAL_TO_HEX(decimal)` 10진수 숫자를 16진수 문자열로 반환합니다.
- `TIME_TO_JS_TIME(time)` `time`을 JavaScript에서의 시간값으로 변경하여 반환합니다.
- `CLEAR_AND_GOTO_ROOM(room)` 현재 룸의 모든 객체를 삭제하고 `room`으로 이동합니다.
- `MAKE_BLEND_COLOR_FOR_SPINE(red, green, blue)` GameMaker: Studio 1.4 버전에서의 스파인 스프라이트에 블렌드 버그를 개선하여 적용합니다.
- `ds_map_list_destroy(map_list)` `ds_list` 내에 `ds_map` 형태의 데이터들이 저장되어 있으면 `ds_list_destroy`로 `ds_list`를 삭제하여도 `ds_map` 데이터들이 메모리에 남게 됩니다. 이런 문제를 해결하고 모든 데이터를 메모리에서 삭제하는 함수입니다.

## 라이센스
[MIT](LICENSE)

## 작성자
[Young Jae Sim](https://github.com/Hanul)