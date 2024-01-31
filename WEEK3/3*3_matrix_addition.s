.DATA
A: .WORD 1,2,3   // Matrix 1
B: .WORD 1,2,3  
C: .WORD 1,2,3  

D: .WORD 1,2,3   // Matrix 2
E: .WORD 1,2,3  
F: .WORD 1,2,3  

G: .WORD 0, 0, 0 
H: .WORD 0, 0, 0  // Final values come in this matrix
I: .WORD 0, 0, 0 // Can be checked by searching memory

.TEXT
ldr r0,=A
ldr r1,=B
ldr r2,=C

ldr r3,=D
ldr r4,=E
ldr r5,=F

ldr r6,=G
ldr r7,=H
ldr r8,=I

mov r9, #0

loop:
    ldr r11, [r0], #4
    ldr r12, [r3], #4
    add r10, r11, r12
    str r10, [r6], #4

    add r9, r9, #1
    cmp r9, #3
    BLT loop

    mov r9, #0

loop1:
    ldr r11, [r1], #4
    ldr r12, [r3], #4
    add r10, r11, r12
    str r10, [r6], #4

    add r9, r9, #1
    cmp r9, #3
    BLT loop1

    mov r9, #0

loop2:
    ldr r11, [r2], #4
    ldr r12, [r3], #4
    add r10, r11, r12
    str r10, [r6], #4

    add r9, r9, #1
    cmp r9, #3
    BLT loop2
