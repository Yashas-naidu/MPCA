.text
    MOV R1,#5;
    MOV R2,#4;
    CMP R1,R2;
    BEQ  J
        SUB R3,R1,R2;
        B end
    J: 
        ADD R3,R1,R2;
end:
    swi 0
.end
