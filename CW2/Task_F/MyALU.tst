// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/02/ALU.tst

load MyALU.hdl,
output-file MyALU.out,
compare-to MyALU.cmp,
output-list x%B1.16.1 y%B1.16.1 c0%B1.1.1 c1%B1.1.1 c2%B1.1.1 
            c3%B1.1.1 c4%B1.1.1 out%B1.16.1 zr%B1.1.1
            ng%B1.1.1;

set x %B0000000000000000,  // x = 0
set y %B1111111111111111;  // y = -1

// Compute 0 
set c0 0,
set c1 0,
set c2 0,
set c3 0,
set c4 0,
eval,
output;

// Compute 1 
set c0 1,
set c1 0,
set c2 0,
set c3 0,
set c4 0,
eval,
output;

// Compute -1
set c0 0,
set c1 1,
set c2 0,
set c3 0,
set c4 0,
eval,
output;

// Compute x
set c0 1,
set c1 1,
set c2 0,
set c3 0,
set c4 0,
eval,
output;

// Compute y
set c0 0,
set c1 0,
set c2 1,
set c3 0,
set c4 0,
eval,
output;

// Compute x'
set c0 1,
set c1 0,
set c2 1,
set c3 0,
set c4 0,
eval,
output;

// Compute y'
set c0 0,
set c1 1,
set c2 1,
set c3 0,
set c4 0,
eval,
output;

// Compute -x
set c0 1,
set c1 1,
set c2 1,
set c3 0,
set c4 0,
eval,
output;

// Compute -y
set c0 0,
set c1 0,
set c2 0,
set c3 1,
set c4 0,
eval,
output;

// Compute x+1
set c0 1,
set c1 0,
set c2 0,
set c3 1,
set c4 0,
eval,
output;

// Compute Y+1
set c0 0,
set c1 1,
set c2 0,
set c3 1,
set c4 0,
eval,
output;

// Compute X-1
set c0 1,
set c1 1,
set c2 0,
set c3 1,
set c4 0,
eval,
output;

// Compute Y-1
set c0 0,
set c1 0,
set c2 1,
set c3 1,
set c4 0,
eval,
output;

// Compute X+Y
set c0 1,
set c1 0,
set c2 1,
set c3 1,
set c4 0,
eval,
output;

// Compute X-Y
set c0 0,
set c1 1,
set c2 1,
set c3 1,
set c4 0,
eval,
output;

// Compute Y-X
set c0 1,
set c1 1,
set c2 1,
set c3 1,
set c4 0,
eval,
output;

// Compute X and Y
set c0 0,
set c1 0,
set c2 0,
set c3 0,
set c4 1,
eval,
output;

// Compute X or Y
set c0 1,
set c1 0,
set c2 0,
set c3 0,
set c4 1,
eval,
output;

// Compute X xor Y
set c0 0,
set c1 1,
set c2 0,
set c3 0,
set c4 1,
eval,
output;

set x %B0000000000000011,  // x = 3
set y %B0000000000000110;  // y = 6

// Compute 0 
set c0 0,
set c1 0,
set c2 0,
set c3 0,
set c4 0,
eval,
output;

// Compute 1 
set c0 1,
set c1 0,
set c2 0,
set c3 0,
set c4 0,
eval,
output;

// Compute -1
set c0 0,
set c1 1,
set c2 0,
set c3 0,
set c4 0,
eval,
output;

// Compute x
set c0 1,
set c1 1,
set c2 0,
set c3 0,
set c4 0,
eval,
output;

// Compute y
set c0 0,
set c1 0,
set c2 1,
set c3 0,
set c4 0,
eval,
output;

// Compute x'
set c0 1,
set c1 0,
set c2 1,
set c3 0,
set c4 0,
eval,
output;

// Compute y'
set c0 0,
set c1 1,
set c2 1,
set c3 0,
set c4 0,
eval,
output;

// Compute -x
set c0 1,
set c1 1,
set c2 1,
set c3 0,
set c4 0,
eval,
output;

// Compute -y
set c0 0,
set c1 0,
set c2 0,
set c3 1,
set c4 0,
eval,
output;

// Compute x+1
set c0 1,
set c1 0,
set c2 0,
set c3 1,
set c4 0,
eval,
output;

// Compute Y+1
set c0 0,
set c1 1,
set c2 0,
set c3 1,
set c4 0,
eval,
output;

// Compute X-1
set c0 1,
set c1 1,
set c2 0,
set c3 1,
set c4 0,
eval,
output;

// Compute Y-1
set c0 0,
set c1 0,
set c2 1,
set c3 1,
set c4 0,
eval,
output;

// Compute X+Y
set c0 1,
set c1 0,
set c2 1,
set c3 1,
set c4 0,
eval,
output;

// Compute X-Y
set c0 0,
set c1 1,
set c2 1,
set c3 1,
set c4 0,
eval,
output;

// Compute Y-X
set c0 1,
set c1 1,
set c2 1,
set c3 1,
set c4 0,
eval,
output;

// Compute X and Y
set c0 0,
set c1 0,
set c2 0,
set c3 0,
set c4 1,
eval,
output;

// Compute X or Y
set c0 1,
set c1 0,
set c2 0,
set c3 0,
set c4 1,
eval,
output;

// Compute X xor Y
set c0 0,
set c1 1,
set c2 0,
set c3 0,
set c4 1,
eval,
output;
