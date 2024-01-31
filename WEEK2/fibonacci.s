.data
A: .word 0,0,0,0,0,0,0,0,0,0
.text
LDR R0,=A
MOV R1,#0
MOV R2,#1
MOV R4,#0
STR R1,[R0],#4
STR R2,[R0],#4
loop:
CMP R4,#10
BEQ exit
ADD R3,R1,R2
STR R3,[R0],#4
MOV R1,R2
MOV R2,R3
ADD R4,R4,#1
B loop
exit:
SWI 0x11
.end
