.DATA
	A: .WORD 10,20,30,40,50
.TEXT
	LDR R1,=A
	LDR R0,[R1] @comparing every number
	MOV R3 ,#0
LOOP: LDR R2,[R1,#4]!
		CMP R0,R2
	BLT less
	L1 : ADD R3,R3, #1
	CMP R3,#4
	BNE LOOP
	B EXIT
less: MOV R0,R2
		B L1
EXIT : SWI 0x011