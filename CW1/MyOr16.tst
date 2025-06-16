load MyOr16.hdl,
output-file MyOr16.out,
compare-to MyOr16.cmp,
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

set a %B1010111110110010, //7
set b %B1011010011100011,
eval,
output;


set a %B1001111101001101,
set b %B1000101001100110,
eval,
output;

set a %B1010111001100001,
set b %B1110101100110100,
eval,
output;

set a %B1100111000000001,
set b %B0110000101001100,
eval,
output;

set a %B0000111011111011,
set b %B0100010111100010,
eval,
output;

set a %B1011100111100110,
set b %B1101111101101101,
eval,
output;

set a %B0111010010001010,
set b %B1011110010111101,
eval,
output;

set a %B0000011011001101,
set b %B1111111001001110,
eval,
output;

set a %B1001110100010010,
set b %B0110110101110001,
eval,
output;

