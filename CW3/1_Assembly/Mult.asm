// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R1 and R2 and stores the result in R3.
// (R1, R2, R3 refer to RAM[1], RAM[2], and RAM[3], respectively.)
// The algorithm is based on repetitive addition.


@R3 // Start R3 at 0.
M=0


@R1 // Jump into the first STEP if R1 > 0.
D=M
@STEP
D;JGT

@END // if nothing happen then Jump
0;JMP

// Adds R1 to R2 and removes 1 from R0.
// If R0 is more than 0 we step again.
(STEP)
    // Get R3.
    @R3
    D=M

    // Add R2 to it.
    @R2
    D=D+M

    // And write the result back to R3.
    @R3
    M=D

    // Reduce R1 by 1.
    @R1
    D=M-1
    M=D

    // If R1 is still > 0 then loop.
    @STEP
    D;JGT

(END1)
    @END1
    0;JMP // Jump 