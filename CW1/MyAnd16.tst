load MyAnd16.hdl,
output-file MyAnd16.out,
compare-to MyAnd16.cmp,
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

set a %B1110110110011110, //7
set b %B1000010001010111,
eval,
output;

set a %B0010101100100101,
set b %B1011011010101001,
eval,
output;

set a %B0110011011100100,
set b %B0001111001011101,
eval,
output;

set a %B0101101101100111,
set b %B0010001001101111,
eval,
output;

set a %B1101000110001111,
set b %B1000101111111110,
eval,
output;

set a %B1010100010110000,
set b %B1100101010110001,
eval,
output;

set a %B0011111100011100,
set b %B0000111101001011,
eval,
output;

set a %B1000000011011010,
set b %B1110010101111011,
eval,
output;

set a %B0001101010100010,
set b %B1111101000010000,
eval,
output;