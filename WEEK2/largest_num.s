.data
A: .word 21, 7, 1, 9, 16, 40, 12, 15, 20, 3
L: .word 0
.text
LDR R1, =A
LDR R2, =L
MOV R3, #0
MOV R4, #0
L1: CMP R4, #10
BEQ exit
LDR R6, [R1], #4
CMP R6, R3
BLT not_greater
MOV R3, R6
not_greater:
ADD R4, R4, #1
B L1
exit:
STR R3,[R2]
SWI 0x11
