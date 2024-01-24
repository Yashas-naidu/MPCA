@ c_prog to ass
@int example(int g,int h,int l,int j)
@{
@	int f;
@	f=(g+h)-(i+j);
@	return f;
@}

.text 
	LDR R4,=F
	MOV R0,#5
	MOV  R1,#10
	MOV R2,#1
	MOV R3,#4
	BL example 
	STR RO,[R4]
	SWI 0x011
example:
	SUB R13,R13,#12
	STR R6,[R13,#8]
	STR R5,[R13,#4]
	STR R4,[R13,#0]
	ADD R5,R0,R1
	ADD R6,R2,R3
	SUB R4,R5,R6
	MOV R0,R4
	LDR R4,[R13,#0]
	LDR R5,[R13,#4]
	LDR R6,[R13,#8]
	ADD R13,R13,#12
	MOV PC ,LR
.data
F :  .WORD 0
	
	

