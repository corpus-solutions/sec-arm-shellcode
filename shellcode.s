.section .text
.global _start

_start:
    .code 32
    add r1, pc, #12
    bx r1

    .code 16
    add r1, pc, #8
    mov r0, #1
    strb r2, [r1, #12]    @ přepsat byte na pozici 12 ('A')
    mov r2, #12
    mov r7, #4
    svc #1
.ascii "ARM AssemblyA"    @ \0 nahradit 'A'
