load MyInc16.hdl,
output-file MyInc16.out,
compare-to MyInc16.cmp,
output-list in%B3.16.3 out%B3.16.3;

set in %B0000000000000000,
eval,
output;

set in %B1111111111111111,
eval,
output;

set in %B0000000000000101,
eval,
output;

set in %B1111111111111011,
eval,
output;

set in %B1110101111001110,
eval,
output;

set in %B0000110110111001,
eval,
output;

set in %B1001010011110100,
eval,
output;

set in %B1111011100111100,
eval,
output;

set in %B0001010100101110,
eval,
output;

set in %B1010000010101110,
eval,
output;

set in %B0010011000001111,
eval,
output;

set in %B1100011001000010,
eval,
output;

set in %B0100000010111010,
eval,
output;

set in %B1000010101110011,
eval,
output;

set in %B0010010100111010,
eval,
output;