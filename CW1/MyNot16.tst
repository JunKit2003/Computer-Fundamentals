load MyNot16.hdl,
output-file MyNot16.out,
compare-to MyNot16.cmp,
output-list in%B3.16.3 out%B3.16.3;

set in %B0000000000000000, //1
eval,
output;

set in %B1111111111111111, //2
eval,
output;

set in %B1010101010101010, //3
eval,
output;

set in %B0011110011000011, //4
eval,
output;

set in %B0001001000110100, //5
eval,
output;

set in %B1000000000000000, //6
eval,
output;

set in %B0100000000000000, //7
eval,
output;

set in %B0010000000000000, //8
eval,
output;

set in %B0001000000000000, //9
eval,
output;

set in %B0000100000000000, //10
eval,
output;

set in %B0000001000000000, //11
eval,
output;

set in %B0000000010000000, //12
eval,
output;

set in %B0000000000010000, //13
eval,
output;

set in %B0000000000001000, //14
eval,
output;

set in %B0000000000000010, //15
eval,
output;