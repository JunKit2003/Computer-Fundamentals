
// ================================= Factorial ==================================
// This program calculates the Factorial F of a given number n 
// 	At run time:
//		- The user should enter the value of n into R0. i.e. RAM[0]
//		- The program then calculate the factorial of n    i.e. F(n)=n!
//			 F(n) = n*(n-1)*(n-2)*......*2*1
//		- The result F(n) should be saved in RAM[1]
//			-- You should also consider the F(0) case.
// ==============================================================================

@1	// Code for Factorial 0 makes RAM [1] == 1
M=1
@0
D=M	//RAM[0] = 1
@END	
D;JEQ	// if RAM[0] == D then Jump



@2	
M=0	//RAM[2] = 0
@0	
D=M	//D = RAM[0]


@1   
M=D
        
D=D-1	 
@5            
M=D     // RAM[5] = D
         

@3          
M=D         

(LOOP1)
@1	
D=M	//D = RAM[1] 
@2
M=M+D   // RAM[2] = RAM[2] + RAM[1]    
@3
M=M-1  //RAM[3] = RAM[3] - 1     
D=M    //D = RAM[3]
@LOOP1
D;JGT //If RAM[3] > 0, Jump to Loop 1


@2        
D=M
@1      //  RAM[1] = 6                 
M=D
@2
M=0

@5      // RAM[5] = 1
M=M-1	//RAM[5] = RAM[5] - 1    
D=M	//D = RAM[5]
@3
M=D	//D = RAM[3]


@LOOP1
D;JGT 	//If RAM[5] > 0, Jump to Loop 1




(END)
@END
0;JMP // Jump to end
