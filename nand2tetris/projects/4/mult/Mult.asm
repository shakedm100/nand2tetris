// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

@sum
M=0

@R1
D=M
@i
M=D

 (LOOP)
	
	//Check if stop condition met
	@i
	D=M
	@STOP
	D;JEQ
	
	//Add to sum
	@R0
	D=M
	@sum
	M=M+D
	
	//Decrease i
	@i
	M=M-1
	
	//Loop back
	@LOOP
	1;JMP

(STOP)
	//Add sum to R2
	@sum
	D=M
	@R2
	M=D

//Loop the program at exit
(END)
	@END
	1;JMP
	