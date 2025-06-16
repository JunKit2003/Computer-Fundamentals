load MyAdd16.hdl,
output-file MyAdd16.out,
compare-to MyAdd16.cmp,
output-list a%B3.16.3 b%B3.16.3 out%B3.16.3;

set a %B0000000000000000,
set b %B0000000000000000,
eval,
output;

set a %B0000000000000000,
set b %B1111111111111111,
eval,
output;

set a %B1111111111111111,
set b %B1111111111111111,
eval,
output;

set a %B1010101010101010,
set b %B0101010101010101,
eval,
output;

set a %B0011110011000011,
set b %B0000111111110000,
eval,
output;

set a %B0001001000110100,
set b %B1001100001110110,
eval,
output;

set a %B1010110100101101, //7
set b %B1100100100000011,
eval,
output;

set a %B1000001011000110,
set b %B0100010110101011,
eval,
output;

set a %B0011101101010101,
set b %B1110110111000110,
eval,
output;

set a %B1111011100100100,
set b %B0001101011101111,
eval,
output;

set a %B1101101000110001,
set b %B1101000010100001,
eval,
output;

set a %B1000110100100010,
set b %B0110111000000010,
eval,
output;

set a %B0010010001001101,
set b %B0011000111100011,
eval,
output;

set a %B0100000000000011,
set b %B0001011100100100,
eval,
output;

set a %B1010010110101100,
set b %B0000011011011110,
eval,
output;