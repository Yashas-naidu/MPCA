.text
	LDR R1 ,=k
	LDR R0,[R1]
 	LDR R2,=SAVE
	MOV R3,#0
loop ADD R5,R2,R3,LSL#2
		LDR R6,[R5,#0]
	CMP R0,R6
	BNE EXIT
	
	ADD R3,R3,#1
	CMP R3,#5
	BNE LOOP
.exit : SWI 0x011
.data 
	k:.WORD 5
	l: .WORD 0
SAVE :. WORD 5,5,5,50,35,40
