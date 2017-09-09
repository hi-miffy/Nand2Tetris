// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(LOOP)
//arr = SCREEN
@SCREEN
D=A
@arr
M=D

//i=0
@i
M=0

@KBD
D=M
@BLACK
D;JNE
@WHITE
D;JEQ

(BLACK)

(LOOP1)
//if(i=8192) goto LOOP
@8192
D=A
@i
D=M-D
@LOOP
D;JEQ

//RAM[arr]=-1
@arr
D=M
A=D
M=-1

//arr=arr+1
@1
D=A
@arr
M=M+D

//i++
@i
M=M+1

@LOOP1
0;JMP

(WHITE)

(LOOP2)
//if(i=8192) goto LOOP
@8192
D=A
@i
D=M-D
@LOOP
D;JEQ

//RAM[arr]=-1
@arr
D=M
A=D
M=0

//arr=arr+1
@1
D=A
@arr
M=M+D

//i++
@i
M=M+1

@LOOP2
0;JMP
