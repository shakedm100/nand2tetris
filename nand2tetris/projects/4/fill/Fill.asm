// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.


//Wait for Keyboard input, if input isn't zero then it paints black
(LOOP)
	@KBD
	D=M
	
	@color
	M=0
	@i
	M=0
	
	@PAINT
	D;JEQ
	
	//If a click on the keyboard registered, paint black
	@color
	M=-1
	
//Paints black all the screen
//Reminder, -1 = 111111111... and 1 = black pixel on screen

(PAINT)
	
	//Stopping condition when i - 8191 == 0
	@8191
	D=A
	@i
	D=M-D
	
	@LOOP
	D;JEQ
	
	//Point to Screen + i
	@i
	D=M
	@SCREEN
	D=A+D
	
	//Paint by @color
	@pointer
	M=D
	@color
	D=M
	@pointer
	A=M
	M=D
	
	//Increase i by one
	@i
	M=M+1
	
	@PAINT
	1;JMP
	
	