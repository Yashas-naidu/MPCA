.DATA
 A : .WORD 0X238
.TEXT
LDR R0,=A
LDR R1,[R0]
MOV R2,#0
B ADDER

ADDER:
AND R3,R1,#15
ADD R2,R2,R3
 LSR R1,R1, #4
CMP R1,#0
BNE ADDER
SWI 0X11

.END
