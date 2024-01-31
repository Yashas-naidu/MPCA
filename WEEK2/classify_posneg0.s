Program:
.data
A: .word 5, -1, 0, 6, -6, 12, -10, 18, 0, -10
P: .word 0,0,0,0
N: .word 0,0,0,0
Z: .word 1,1
.text
LDR R0,=A
LDR R1,=P
LDR R2,=N
LDR R3,=Z
MOV R4,#0
L1:
CMP R4,#10
BEQ exit
LDR R5, [R0], #4
CMP R5,#0
BGT positive
BLT negative
BEQ zero
positive:
STR R5,[R1],#4
B end
negative:
STR R5,[R2],#4
B end
zero:
STR R5,[R3],#4
B end
end:
ADD R4,R4,#1
B L1
exit:
SWI 0x11
.end
